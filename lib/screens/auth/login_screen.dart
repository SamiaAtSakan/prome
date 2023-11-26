import 'package:flutter/material.dart';
import 'package:prome/apis/apis.dart';
import 'package:prome/screens/auth/signup_accounts.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            TextFormInputField(
              controller: passwordController,
              hintText: "Enter Password",
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (userNameController.text.isEmpty) {
                  messageBar("User Name is Required", context);
                } else if (passwordController.text.isEmpty) {
                  messageBar("Password is Required", context);
                } else {
                  ApiClass().loginAccount(userNameController.text,
                      passwordController.text, context);
                }
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
                    onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
