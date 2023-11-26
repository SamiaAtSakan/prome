import 'package:flutter/material.dart';
import 'package:prome/screens/auth/login_screen.dart';
import 'package:prome/screens/onboard/on_boarding_screen.dart';
import 'package:prome/utils/color.dart';

class SignUpAccount extends StatefulWidget {
  const SignUpAccount({super.key});

  @override
  State<SignUpAccount> createState() => _SignUpAccountState();
}

class _SignUpAccountState extends State<SignUpAccount> {
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
                "Sign up to your account",
                style: TextStyle(
                    fontSize: 14,
                    color: textColorSubTitle,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              width: 325.34,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    fillColor: white,
                    filled: true,
                    labelText: "User Name",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "User Name",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              width: 325.34,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    fillColor: white,
                    filled: true,
                    labelText: "Email Address/Phone Number",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "abc@gmail.com",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 325.34,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    fillColor: white,
                    filled: true,
                    labelText: "Password",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Write Your Password",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 325.34,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    fillColor: white,
                    filled: true,
                    labelText: "Confrim Password",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Write Your Password",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              width: 325.34,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    fillColor: white,
                    filled: true,
                    labelText: "Gender",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Male/Female/Others",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => OnBoardingScreen()));
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
    );
  }
}
