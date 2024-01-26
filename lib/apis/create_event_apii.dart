import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prome/main_dashboard.dart';
import 'package:http_parser/http_parser.dart';

class EventApi {
  Future<void> createEventApi(
    String event_name,
    String event_description,
    String event_location,
    String event_start_date,
    String event_end_date,
    String event_start_time,
    String event_end_time,
    File? eventCoverImage,
    BuildContext context,
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
            'https://theprome.com/api/create-event?access_token=$accessToken'),
      );

      request.fields['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      request.fields['event_name'] = event_name;
      request.fields['event_description'] = event_description;
      request.fields['event_location'] = event_location;
      request.fields['event_start_date'] = event_start_date;
      request.fields['event_end_date'] = event_end_date;
      request.fields['event_start_time'] = event_start_time;
      request.fields['event_end_time'] = event_end_time;

      if (eventCoverImage != null) {
        if (_isValidImageExtension(eventCoverImage.path)) {
          var bytes = await eventCoverImage.readAsBytes();
          request.files.add(http.MultipartFile.fromBytes(
            'images',
            bytes,
            filename: 'event_cover.jpg',
            contentType: MediaType('image', 'jpeg'),
          ));
        } else {
          print(
              "Invalid image file type. Please select a JPG, PNG, GIF, or JPEG file.");
          return;
        }
      }

      var response = await http.Response.fromStream(await request.send());

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);

        // Save event ID to FlutterSecureStorage
        await storage.write(
            key: 'event_id', value: responseJson['event_id'].toString());
        print(responseJson['event_id']);
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Event created successfully')),
        );

        // Navigate to the MainDashboard page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (builder) => MainDashboard()),
        );
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
