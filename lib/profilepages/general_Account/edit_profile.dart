import 'package:flutter/material.dart';
import 'package:prome/main_dashboard.dart';
import 'package:prome/utils/color.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Container(
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
                    labelText: "First Name",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "First Name",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Center(
            child: Container(
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
                    labelText: "Last Name",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Last Name",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 325.34,
              height: 70,
              margin: const EdgeInsets.only(
                top: 10,
              ),
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
                    labelText: "Location",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Location",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "+02314144441",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Center(
            child: Container(
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
                    labelText: "Website",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "www.google.com",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Center(
            child: Container(
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
                    labelText: "Address",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Address",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainDashboard()));
              },
              child: Text(
                "Save",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(220, 50)),
            ),
          ),
        ],
      ),
    );
  }
}
