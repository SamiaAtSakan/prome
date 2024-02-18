import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AlbumApi {
  Future<List<Map<String, dynamic>>> getUserAlbums(String type) async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    var formData = {
      'user_id': userId.toString(),
      "server_key": "667cc80095ee1c47cfabe800dbe9895a",
      'limit': '35',
      "type": type,

      // Add other parameters as needed
    };

    var response = await http.post(
      Uri.parse(
          "https://theprome.com/api/get-user-albums?access_token=$accessToken"),
      body: formData,
    );

    if (response.statusCode == 200) {
      print(response.body);
      var albumsData = json.decode(response.body)['albums'];
      return List<Map<String, dynamic>>.from(albumsData);
    } else {
      throw Exception('Failed to load user albums');
    }
  }
}
