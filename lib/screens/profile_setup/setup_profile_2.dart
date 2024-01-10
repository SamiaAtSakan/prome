import 'package:flutter/material.dart';
import 'package:prome/main_dashboard.dart';
import 'package:prome/screens/users/suggested_users.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';

class SetupProfile2 extends StatefulWidget {
  const SetupProfile2({super.key});

  @override
  State<SetupProfile2> createState() => _SetupProfile2State();
}

class _SetupProfile2State extends State<SetupProfile2> {
  TextEditingController _aboutController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              width: 325.34,
              child: TextField(
                controller: _aboutController,
                maxLines: 4,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.description),
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
                    labelText: "About Me",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Write Something about Yourself",
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
              child: Text(
                "Relationship",
                style: TextStyle(color: backgroundColor, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        messageBar("None Option Selected", context);
                      },
                      child: Text("None")),
                  TextButton(
                      onPressed: () {
                        messageBar("Single Option Selected", context);
                      },
                      child: Text("Single")),
                  TextButton(
                      onPressed: () {
                        messageBar(
                            "In Relationship Option is Selected", context);
                      },
                      child: Text("Relationship")),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 325.34,
              height: 70,
              child: TextField(
                controller: _mobileController,
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
                    suffixIcon: Icon(Icons.mobile_friendly),
                    labelText: "Mobile",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Write Your Mobile Number",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (_aboutController.text.isEmpty ||
                    _mobileController.text.isEmpty) {
                  messageBar("About Me and Phone Number is Required", context);
                } else {
                  messageBar("Profile Updated Successfully", context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => MainDashboard()));
                }
              },
              child: Text(
                "Save",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
            const SizedBox(
              height: 15,
            ),
            Flexible(child: Container()),
          ],
        ),
      ),
    );
  }
}
