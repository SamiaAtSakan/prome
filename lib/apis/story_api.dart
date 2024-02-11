import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StoryApi {
  Future<void> createStoryApi(
    String story_title,
    String story_description,
    File? file,
    BuildContext context,
    String file_type,
  ) async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://theprome.com/api/create-story?access_token=$accessToken'),
      );

      request.fields['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      request.fields['story_title'] = story_title;
      request.fields['story_description'] = story_description;
      request.fields['file_type'] = file_type;

      if (file != null) {
        request.files.add(http.MultipartFile(
          'file',
          http.ByteStream(file.openRead()),
          await file.length(),
          filename: file.path.split('/').last,
        ));
      }

      var response = await http.Response.fromStream(await request.send());

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);

        // Save Story ID to FlutterSecureStorage
        await storage.write(
            key: 'story_id', value: responseJson['story_id'].toString());
        print(responseJson['story_id']);
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Story created successfully')),
        );

        // Navigate to the MainDashboard page
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (builder) => MainDashboard()),
        // );
      } else {
        final responseJson = jsonDecode(response.body);
        if (responseJson['api_status'] == '400' &&
            responseJson['errors']['error_id'] == 4) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(responseJson['errors']['error_text'])),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to create event')),
          );
        }
      }
    } catch (error) {
      print(error);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to create event: $error')),
      );
    }
  }

  bool _isValidImageExtension(String filePath) {
    final validExtensions = ['.jpg', '.jpeg', '.png', '.gif'];
    final extension = filePath.toLowerCase().split('.').last;
    return validExtensions.contains(".$extension");
  }
}
