// product_api.dart
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ProductApi {
  Future<Map<String, dynamic>> createProduct({
    required String productTitle,
    required String productDescription,
    required String productLocation,
    required int productPrice,
    required int productCategory,
    required int productType,
    required File image,
  }) async {
    try {
      final storage = FlutterSecureStorage();
      String? accessToken = await storage.read(key: 'access_token');
      String? userId = await storage.read(key: 'user_id');

      if (accessToken == null || userId == null) {
        print("Access token or user ID not found.");
        throw Exception('Access token or user ID not found.');
      }
      // Create FormData
      FormData formData = FormData.fromMap({
        'product_title': productTitle,
        'product_description': productDescription,
        'product_location': productLocation,
        'product_price': productPrice,
        'product_category': productCategory,
        'product_type': productType,
        'server_key': "667cc80095ee1c47cfabe800dbe9895a",
        'images':
            await MultipartFile.fromFile(image.path, filename: 'image.jpg'),
      });

      // Make API Call
      Dio dio = Dio();
      Response response = await dio.post(
        'http://theprome.com/api/create-product?access_token=$accessToken',
        data: formData,
      );

      // Handle the response
      if (response.statusCode == 200) {
        print(response.data);
        return response.data;
      } else {
        throw Exception(
            'Failed to create product. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Error creating product: $error');
    }
  }
}
