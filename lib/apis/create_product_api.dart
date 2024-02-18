// product_api.dart
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:prome/main_dashboard.dart';

class ProductApi {
  Future<void> createProduct(
      String productTitle,
      String productDescription,
      String productLocation,
      int productPrice,
      int productCategory,
      int productType,
      File imageFile) async {
    final storage = FlutterSecureStorage();
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }
    var uri = Uri.parse(
        'https://theprome.com/api/create-product?access_token=$accessToken');

    var request = http.MultipartRequest('POST', uri)
      ..fields['server_key'] = '667cc80095ee1c47cfabe800dbe9895a'
      ..fields['product_title'] = productTitle
      ..fields['product_description'] = productDescription
      ..fields['product_location'] = productLocation
      ..fields['product_price'] = productPrice.toString()
      ..fields['product_category'] = productCategory.toString()
      ..fields['product_type'] = productType.toString()
      ..files.add(http.MultipartFile(
          'images', imageFile.readAsBytes().asStream(), imageFile.lengthSync(),
          filename: 'image.jpg'));

    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        // Successful response
        var jsonResponse = await http.Response.fromStream(response);
        print(jsonResponse.body);
      } else {
        print(response);

        // Handle error
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      // Handle network errors
      print('Error: $error');
    }
  }

  bool _isValidImageExtension(String filePath) {
    final validExtensions = ['.jpg', '.jpeg', '.png', '.gif'];
    final extension = filePath.toLowerCase().split('.').last;
    return validExtensions.contains(".$extension");
  }
}
