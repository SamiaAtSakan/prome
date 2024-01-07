import 'package:flutter/material.dart';
import 'package:prome/apis/apis.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailForgotController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/newlogo.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter Your Email if you forogot your password",
              style: TextStyle(
                  fontSize: 14,
                  color: textColorSubTitle,
                  fontWeight: FontWeight.w400),
            ),
          ),
          TextFormInputField(
            controller: _emailForgotController,
            hintText: "Enter Email Id",
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              if (_emailForgotController.text.isEmpty) {
                messageBar("Email is Required", context);
              } else {
                ApiClass().forgotPassword(_emailForgotController.text, context);
              }
            },
            child: Text(
              "Send",
              style: TextStyle(color: white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
          ),
        ],
      ),
    );
  }
}
