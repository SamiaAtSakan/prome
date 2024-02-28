import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prome/main_dashboard.dart';
import 'package:prome/screens/auth/forgot_password.dart';
import 'package:prome/screens/auth/signup_accounts.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/textformfield.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hello Again!",
                style: TextStyle(
                    fontSize: 24,
                    color: textColorTitle,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login into your account",
                style: TextStyle(
                    fontSize: 14,
                    color: textColorSubTitle,
                    fontWeight: FontWeight.w400),
              ),
            ),
            TextFormInputField(
              controller: userNameController,
              hintText: "User Name",
              textInputType: TextInputType.text,
            ),
            Container(
              width: 335,
              height: 70,
              child: TextFormField(
                controller: passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: _obscureText
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainDashboard()));
              },
              child: Text(
                "Login In",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: backgroundColor),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Remember Me",
                        style: TextStyle(color: backgroundColor),
                      ))
                ],
              ),
            ),
            Flexible(child: Container()),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont't have an account?",
                    style: TextStyle(
                        color: textColorSubTitle.withOpacity(.7),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => SignUpAccount()));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          color: backgroundColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SocialLoginButton(
                buttonType: SocialLoginButtonType.google,
                onPressed: () async {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SocialLoginButton(
                buttonType: SocialLoginButtonType.facebook,
                onPressed: () async {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
