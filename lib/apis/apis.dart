import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prome/main_dashboard.dart';
import 'package:prome/utils/constant.dart';
import 'package:device_info_plus/device_info_plus.dart';

class ApiClass {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

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

      final response =
          await http.post(Uri.parse('https://theprome.com/api/create-account'),
              // headers: {'Content-Type': 'application/json'},
              body: map);

      if (response.statusCode == 200) {
        final responseJson = jsonDecode(response.body);
        print(response.body);
        print('Success: ${responseJson['success']}');
        print('Message: ${responseJson['message']}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Account created successfully')),
        );
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (builder) => MainDashboard()));
      } else {
        print('Failed to register user.');
        print(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to create account')),
        );
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

    // Get the username and password from the text controllers

    try {
      var map = new Map<String, dynamic>();
      map['server_key'] = '667cc80095ee1c47cfabe800dbe9895a';
      map['password'] = password;
      map['username'] = username;
      map['device_id'] = deviceInfo.toString();
      map['timezone'] = "";

      final response = await http.post(Uri.parse(apiUrl), body: map);

      if (response.statusCode == 200) {
        // Account created successfully
        print(response.statusCode);
        print(deviceInfo);
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
}
