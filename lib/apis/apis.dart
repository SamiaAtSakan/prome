import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:prome/main_dashboard.dart';
import 'package:prome/models/user_data_model.dart';
import 'package:prome/screens/auth/login_screen.dart';
import 'package:prome/utils/constant.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiClass {
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  Future<void> createAccount(String email, String password,
      String confirm_password, String username, BuildContext context) async {
    if (password != confirm_password) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    try {
      var map = new Map<String, dynamic>();
      map['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      map['password'] = password;
      map['username'] = username;
      map['confirm_password'] = confirm_password;
      map['email'] = email;

      final response = await http.post(
        Uri.parse('https://theprome.com/api/create-account'),
        body: map,
      );

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Account created successfully')),
        );
        final storage = FlutterSecureStorage();
        await storage.write(
          key: 'access_token',
          value: responseJson['access_token'],
        );
        print(response.body);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (builder) => MainDashboard()),
        );
      } else {
        print('Failed to register user.');
        print(response.body);
        final responseJson = jsonDecode(response.body);
        if (responseJson['api_status'] == '400' &&
            responseJson['errors']['error_id'] == 4) {
          // Username is already taken
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(responseJson['errors']['error_text'])),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to create account')),
          );
        }
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to create account: $error')),
      );
    }
  }

  //Login Api
  Future<void> loginAccount(
      String username, String password, BuildContext context) async {
    // Replace the URL with your actual API endpoint for account creation
    final String apiUrl = "$BASEURL$Login_ENDPOINT";

    try {
      // Get device information
      AndroidDeviceInfo androidInfo;
      try {
        androidInfo = await deviceInfo.androidInfo;
      } on PlatformException {
        // Handle exception
        print("Failed to get Android device info");
        return;
      }

      var map = {
        'server_key': '667cc80095ee1c47cfabe800dbe9895a',
        'password': password,
        'username': username,
        'device_id': androidInfo.id, // Use Android device ID as an example
        'timezone': "",
      };

      final response = await http.post(Uri.parse(apiUrl), body: map);

      if (response.statusCode == 200) {
        // Account created successfully
        final responseJson = jsonDecode(response.body);
        final storage = FlutterSecureStorage();
        await storage.write(
          key: 'access_token',
          value: responseJson['access_token'],
        );
        await storage.write(key: "user_id", value: responseJson['user_id']);
        print(responseJson['user_id']);
        print(response.body);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Login Completed")));
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => MainDashboard()));
      } else {
        // Handle errors
        print("Failed to create account. Status code: ${response.statusCode}");
      }
    } catch (error) {
      // Handle network errors
      print("Error creating account: $error");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("$error")));
    }
  }

  //Forgot Password
  Future<void> forgotPassword(String email, BuildContext context) async {
    // Replace the URL with your actual API endpoint for account creation

    // Get the username and password from the text controllers

    try {
      final storage = FlutterSecureStorage();
      final accessToken = await storage.read(key: 'access_token');
      if (accessToken == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Access token not found')),
        );
        return;
      }
      final String apiUrl =
          "$BASEURL$ResetPassword_ENDPOINT?access_token=$accessToken";
      var map = new Map<String, dynamic>();
      map['email'] = email;
      map['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      final response = await http.post(Uri.parse(apiUrl), body: map);

      if (response.statusCode == 200) {
        // Account created successfully
        print(response.statusCode);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Email Send Successfully")));
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => LoginScreen()));
      } else {
        // Handle errors
        print("Failed to create account. Status code: ${response.statusCode}");
      }
    } catch (error) {
      // Handle network errors
      print("Error creating account: $error");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("$error")));
    }
  }

  static Future<UserData> getUserData(
      BuildContext context, List<String> fetchKeys) async {
    final storage = FlutterSecureStorage();

    // Retrieve access token and user ID from storage
    String? accessToken = await storage.read(key: 'access_token');
    String? userId = await storage.read(key: 'user_id');

    if (accessToken == null || userId == null) {
      // Handle scenario where access token or user ID is not available
      print("Access token or user ID not found.");
      throw Exception('Access token or user ID not found.');
    }

    try {
      final String apiUrl =
          "$BASEURL$GetUserDataEndPOINT?access_token=$accessToken";

      var map = <String, dynamic>{
        'user_id': userId,
        'access_token': accessToken,
        'server_key': '667cc80095ee1c47cfabe800dbe9895a',
        'fetch': fetchKeys.join(','),
      };

      final response = await http.post(Uri.parse(apiUrl), body: map);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        return UserData.fromJson(responseData);
      } else {
        print('Failed to get user data. Status code: ${response.statusCode}');
        throw Exception('Failed to get user data');
      }
    } catch (error) {
      print('Error getting user data: $error');
      throw Exception('Error getting user data');
    }
  }
}
