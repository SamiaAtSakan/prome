import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class ProductApi {
  Future<String> getProducts() async {
    try {
      final storage = FlutterSecureStorage();
      String? accessToken = await storage.read(key: 'access_token');
      String? userId = await storage.read(key: 'user_id');

      if (accessToken == null || userId == null) {
        print("Access token or user ID not found.");
        throw Exception('Access token or user ID not found.');
      }

      final Uri baseUrl = Uri.https(
          'theprome.com', '/api/get-products', {'access_token': accessToken});

      // Create a new MultipartRequest
      final http.MultipartRequest request =
          http.MultipartRequest('POST', baseUrl);
      request.fields['server_key'] = "667cc80095ee1c47cfabe800dbe9895a";
      // request.fields['user_id'] = userId;

      final http.Response response =
          await http.Response.fromStream(await request.send());

      if (response.statusCode == 200) {
        // Successful response
        final Map<String, dynamic> responseData = json.decode(response.body);
        print(responseData);
        print(response.body); // This will contain the JSON response

        String responseString = response.body;
        return responseString;
      } else {
        // Error handling for non-200 status codes
        print('API call failed with status code: ${response.statusCode}');
        print(response.body); // This may contain error details
        throw Exception(
            'API call failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      // Error handling for network errors
      print('Error during API call: $e');
      throw Exception('Error during API call: $e');
    }
  }
}
