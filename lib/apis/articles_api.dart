import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:prome/models/article_model.dart';

class ArticlesApi {
  Future<List<ArticleModel>> getArticles() async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    // Base URL using Uri.https
    final Uri baseUrl = Uri.https(
        'theprome.com', '/api/get-articles', {'access_token': accessToken});

    // Create a new MultipartRequest
    final http.MultipartRequest request =
        http.MultipartRequest('POST', baseUrl);

    // Add other form data fields
    // request.fields['user)id'] = userId;

    request.fields['server_key'] = "667cc80095ee1c47cfabe800dbe9895a";

    try {
      // Send the request
      final http.Response response =
          await http.Response.fromStream(await request.send());

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse and handle the response data
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> eventsData = responseData['articles'] ?? [];
        final List<ArticleModel> events = eventsData
            .map((eventData) => ArticleModel.fromJson(eventData))
            .toList();
        print(response.statusCode);
        print(events);
        print(response.body);
        print(responseData);
        await storage.write(key: 'id', value: responseData['id'].toString());
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
