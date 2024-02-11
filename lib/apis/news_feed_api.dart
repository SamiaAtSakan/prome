import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prome/screens/pages/home_page.dart';

class NewsFeedApi {
  final storage = FlutterSecureStorage();
  final serverKey = '667cc80095ee1c47cfabe800dbe9895a';

  Future<void> setBrowserCookie(BuildContext context) async {
    try {
      String? accessToken = await storage.read(key: 'access_token');

      if (accessToken != null) {
        var map = {"server_key": serverKey};

        final url = Uri.parse(
            'https://theprome.com/api/set-browser-cookie?access_token=$accessToken');
        final response = await http.post(url, body: map);
        print(response.body);
        // if (response.statusCode == 302) {
        //   // Handle redirect
        String redirectUrl = response.headers['location']!;
        print(redirectUrl);
        print(response.headers);
        //   print('Redirecting to: $redirectUrl');
        //   await fetchNewsFeedData(serverKey, null, context, redirectUrl);
        // } else if (response.statusCode == 200) {
        //   // Handle success
        //   print('Browser cookie set successfully');
        // } else {
        //   // Handle other status codes
        //   print(
        //       'Error setting browser cookie. Status code: ${response.statusCode}');
        //   print('Response body: ${response.body}');
        // }
      } else {
        print('Access token is null');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> fetchNewsFeedData(
    String serverKey,
    Map<String, dynamic>? postData,
    BuildContext context,
    String url,
  ) async {
    try {
      String? accessToken = await storage.read(key: 'access_token');

      if (accessToken != null) {
        final url = Uri.parse(
            'https://theprome.com/get_news_feed?access_token=$accessToken');
        final response = await http.get(
          url,
          headers: {
            'server_key': serverKey,
            'access-token': accessToken,
            if (postData != null) 'Content-Type': 'application/json',
          },
        );

        if (response.statusCode == 200) {
          final htmlString = response.body;
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => NewsFeedScreen(htmlString),
          //   ),
          // );
        } else {
          print('Error fetching news feed: ${response.statusCode}');
          print('Response body: ${response.body}');
        }
      } else {
        print('Access token is null');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
