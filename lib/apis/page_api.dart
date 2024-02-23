import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prome/main_dashboard.dart';

class PageApi {
  Future<void> createPageApi(
    String page_name,
    String page_title,
    String page_category,
    String page_description,
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
            'https://theprome.com/api/create-page?access_token=$accessToken'),
      );

      request.fields['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      request.fields['page_name'] = page_name;
      request.fields['page_title'] = page_title;
      request.fields['page_category'] = page_category;
      request.fields['page_description'] = page_description;

      var response = await http.Response.fromStream(await request.send());

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);
        await storage.write(key: 'page_id', value: responseJson['page_id']);
        print(responseJson['page_id']);
        // print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Page created successfully')),
        );

        // Navigate to the MainDashboard page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (builder) => MainDashboard()),
        );
      } else {
        final responseJson = jsonDecode(response.body);
        if (responseJson['api_status'] == '400' &&
            responseJson['errors']['page_id'] == 4) {
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

  //Get Page Information
  Future<String> getPageInfo() async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');
    String? page_id = await storage.read(key: "page_id");

    if (accessToken == null || userId == null) {
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    // Base URL using Uri.https
    final Uri baseUrl = Uri.https(
        'theprome.com', '/api/get-page-data', {'access_token': accessToken});

    // Create a new MultipartRequest
    final http.MultipartRequest request =
        http.MultipartRequest('POST', baseUrl);

    // Add other form data fields

    // Handle getLatestEvents and getUserEvents
    request.fields['page_id'] = page_id.toString();
    request.fields['server_key'] = "667cc80095ee1c47cfabe800dbe9895a";

    try {
      // Send the request
      final http.Response response =
          await http.Response.fromStream(await request.send());

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse and handle the response data
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> eventsData = responseData['page_data'] ?? [];
        // final List<Event> events =
        //     eventsData.map((eventData) => Event.fromJson(eventData)).toList();
        print(response.statusCode);
        print(eventsData);
        print(response.body);
        print(responseData);
        return response.body;
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
