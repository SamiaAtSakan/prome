import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class NewsFeedApi {
  Future<Map<String, dynamic>> cookieApi() async {
    try {
      final storage = FlutterSecureStorage();
      String? accessToken = await storage.read(key: 'access_token');
      String? userId = await storage.read(key: 'user_id');

      if (accessToken == null || userId == null) {
        print("Access token or user ID not found.");
        throw Exception('Access token or user ID not found.');
      }

      final response = await http.get(
        Uri.parse(
            'https://theprome.com/get_news_feed?access_token=$accessToken'),
      );

      print('API Response: ${response.body}');
      if (response.statusCode == 200) {
        if (response.headers['content-type']!.contains('application/json')) {
          // Parse JSON response
          Map<String, dynamic> jsonResponse = json.decode(response.body);

          // Extract relevant information for HTML content
          List<dynamic> userPosts = jsonResponse['user_posts'] ?? [];
          List<dynamic> pagePosts = jsonResponse['page_posts'] ?? [];
          List<dynamic> groupPosts = jsonResponse['group_posts'] ?? [];
          List<dynamic> timelinePosts = jsonResponse['timeline_posts'] ?? [];
          print(jsonResponse['user_posts']);
          // Create HTML content
          String htmlContent = '''
            <html>
              <head>
                <title>User's Latest Posts</title>
              </head>
              <body>
                <h1>User's Latest Posts</h1>
                <ul>${userPosts.map((post) => '<li>$post</li>').join()}</ul>
                
                <h1>Page's Posts</h1>
                <ul>${pagePosts.map((post) => '<li>$post</li>').join()}</ul>
                
                <h1>Group's Posts</h1>
                <ul>${groupPosts.map((post) => '<li>$post</li>').join()}</ul>
                
                <h1>Latest Timeline Posts</h1>
                <ul>${timelinePosts.map((post) => '<li>$post</li>').join()}</ul>
              </body>
            </html>
          ''';

          return {'html_content': htmlContent};
        } else {
          print('Non-JSON response: ${response.body}');
          return {'html_content': 'Unexpected server response'};
        }
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
      throw Exception('An error occurred: $error');
    }
  }
}
