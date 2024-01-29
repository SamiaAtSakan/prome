import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prome/main_dashboard.dart';

class GroupApi {
  Future<void> createGroupApi(
    String group_name,
    String group_title,
    String about,
    int category,
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
            'https://theprome.com/api/create-group?access_token=$accessToken'),
      );

      request.fields['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      request.fields['group_name'] = group_name;
      request.fields['group_title'] = group_title;
      request.fields['about'] = about;
      request.fields['category'] = category.toString();

      var response = await http.Response.fromStream(await request.send());

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);

        // Save event ID to FlutterSecureStorage
        // await storage.write(
        //     key: 'event_id', value: responseJson['event_id'].toString());
        // print(responseJson['event_id']);
        print(response.body);
        // group_id
        await storage.write(
            key: 'group_id', value: responseJson['group_id'].toString());
        print(responseJson['group_id']);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Group created successfully')),
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
}
