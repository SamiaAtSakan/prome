import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prome/models/follow_user_model.dart';
import 'package:http/http.dart' as http;

class FollowApi {
  final String apiUrl = 'https://theprome.com/api';

  Future<Map<String, dynamic>> followUser() async {
    final storage = FlutterSecureStorage();

    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    final Uri uri = Uri.parse('$apiUrl/follow-user?access_token=$accessToken');

    final response = await http.post(uri, body: {
      'user_id': userId,
      "server_key": "667cc80095ee1c47cfabe800dbe9895a"
    });

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch followed users: ${response.statusCode}');
    }
  }
}
//  static const String baseUrl = 'http://your-site.com/api/';

//   static Future<Map<String, dynamic>> followUser(
//       String accessToken, int userId) async {
//     final url = Uri.parse('$baseUrl/follow-user?access_token=$accessToken');


//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to follow/unfollow user');
//     }
//   }