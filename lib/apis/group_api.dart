import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prome/main_dashboard.dart';
import 'package:prome/models/show_community_model.dart';

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
        await storage.write(
            key: 'group_name', value: responseJson['group_name'].toString());
        await storage.write(
            key: 'group_title', value: responseJson['group_title'].toString());
        await storage.write(
            key: 'about', value: responseJson['about'].toString());
        await storage.write(
            key: 'category', value: responseJson['category'].toString());
        print(responseJson['group_id']);
        print(responseJson['group_name']);
        print(responseJson['about']);
        print(responseJson['group_title']);

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

  //Get Group Community
  Future<List<ShowCommunity>> getMyGroup({
    bool getLatestEvents = false,
    bool getUserEvents = false,
  }) async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    // Base URL using Uri.https
    final Uri baseUrl = Uri.https('theprome.com', '/api/get-community', {
      'access_token': accessToken,
    });

    // Create a new MultipartRequest
    final http.MultipartRequest request =
        http.MultipartRequest('POST', baseUrl);

    // Default behavior, fetch both events and user events
    if (getLatestEvents) {
      request.fields['fetch'] = 'groups';
    } else if (getUserEvents) {
      request.fields['fetch'] = 'pages';
    } else {
      // Default behavior, fetch both events and user events
      request.fields['fetch'] = 'groups,pages';
    }
    request.fields['user_id'] = userId;
    request.fields['server_key'] = "667cc80095ee1c47cfabe800dbe9895a";

    try {
      // Send the request
      final http.Response response =
          await http.Response.fromStream(await request.send());

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> eventsData = responseData['groups'] ?? [];
        final List<ShowCommunity> events = eventsData
            .map((eventData) => ShowCommunity.fromJson(eventData))
            .toList();
        print(response.statusCode);
        print(events);
        print(response.body);
        print(responseData);

        print(response.body);
        return events;
      } else {
        // Handle specific errors based on status codes
        if (response.statusCode == 401) {
          // Unauthorized - handle accordingly
          print('Unauthorized access');
          print(response.body);
        }
        print('Error: ${response.statusCode} - ${response.reasonPhrase}');
        throw Exception('Failed to fetch events');
      }
    } catch (e) {
      // Handle exceptions
      print('Exception: $e');
      throw Exception('Failed to fetch events: $e');
    }
  }
}
