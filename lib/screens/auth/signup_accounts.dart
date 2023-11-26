import 'package:flutter/material.dart';
import 'package:prome/apis/register_apis.dart';
import 'package:prome/screens/auth/login_screen.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class SignUpAccount extends StatefulWidget {
  const SignUpAccount({super.key});

  @override
  State<SignUpAccount> createState() => _SignUpAccountState();
}

class _SignUpAccountState extends State<SignUpAccount> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
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
                  "Sign up to your account",
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
              TextFormInputField(
                controller: emailController,
                hintText: "Enter Email Address",
                textInputType: TextInputType.emailAddress,
              ),
              TextFormInputField(
                controller: passwordController,
                hintText: "Enter Password",
                textInputType: TextInputType.visiblePassword,
              ),
              TextFormInputField(
                controller: passwordController,
                hintText: "Enter Confirm Password",
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  if (userNameController.text.isEmpty) {
                    messageBar("User Name is Required", context);
                  } else if (emailController.text.isEmpty) {
                    messageBar("Email is Required", context);
                  } else if (passwordController.text.isEmpty) {
                    messageBar("Password is Required", context);
                  } else {
                    ApiClass().createAccount(
                        emailController.text,
                        passwordController.text,
                        passwordController.text,
                        userNameController.text,
                        context);
                  }
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
              ),
              const SizedBox(
                height: 15,
              ),
              Flexible(child: Container()),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
                                builder: (builder) => LoginScreen()));
                      },
                      child: Text(
                        " Sign In",
                        style: TextStyle(
                            color: backgroundColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
