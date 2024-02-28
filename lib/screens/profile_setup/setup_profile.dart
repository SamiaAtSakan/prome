import 'package:flutter/material.dart';
import 'package:prome/screens/auth/login_screen.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class SetUpProfile extends StatefulWidget {
  const SetUpProfile({super.key});

  @override
  State<SetUpProfile> createState() => _SetUpProfileState();
}

class _SetUpProfileState extends State<SetUpProfile> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController _confrimPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Update Profile"),
        actions: [],
        backgroundColor: backgroundColor,
      ),
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
                  "Update your account password",
                  style: TextStyle(
                      fontSize: 14,
                      color: textColorSubTitle,
                      fontWeight: FontWeight.w400),
                ),
              ),
              TextFormInputField(
                controller: passwordController,
                hintText: "Enter Current Password",
                textInputType: TextInputType.visiblePassword,
              ),
              TextFormInputField(
                controller: _confrimPassword,
                hintText: "Enter new Password",
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  if (passwordController.text.isEmpty) {
                    messageBar("Current Password is Required", context);
                  } else if (_confrimPassword.text.isEmpty) {
                    messageBar("Confirm Password is Required", context);
                  } else {
                    messageBar("Password is  Updated", context);
                  }
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => LoginScreen()));
                },
                child: Text(
                  "Update",
                  style: TextStyle(color: white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
