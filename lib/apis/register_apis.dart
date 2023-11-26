import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prome/screens/onboard/on_boarding_screen.dart';
import 'package:prome/utils/constant.dart';

class ApiClass {
  //Register Api
  Future<void> createAccount(String email, String password,
      String confirm_password, String username, BuildContext context) async {
    // Replace the URL with your actual API endpoint for account creation
    final String apiUrl = "$BASEURL$Register_ENDPOINT";

    // Get the username and password from the text controllers

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {
          'username': username,
          'password': password,
          'confirm_password': confirm_password,
          'email': email,
        },
      );

      if (response.statusCode == 200) {
        // Account created successfully
        print(response.body);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Registration Completed")));
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => OnBoardingScreen()));
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
