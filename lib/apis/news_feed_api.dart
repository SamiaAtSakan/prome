import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class NewsFeedApi {
  Future<Map<String, dynamic>> getNewsFeed() async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      // Handle scenario where access token or user ID is not available
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    final response = await http.get(
      Uri.parse('https://theprome.com/get_news_feed'),
    );

    print('API Response: ${response.body}');

    if (response.statusCode == 200) {
      // Check if the response content type is JSON
      if (response.headers['content-type']!.contains('application/json')) {
        print(response.body);
        return json.decode(response.body);
      } else {
        // Handle non-JSON response (e.g., HTML)
        print('Non-JSON response: ${response.body}');
        // Display HTML content in a WebView or handle it as needed
        return {'html_content': response.body};
      }
    } else {
      throw Exception(
          'Failed to load data. Status code: ${response.statusCode}');
    }
  }
}
