import 'package:flutter/material.dart';
import 'package:prome/main_dashboard.dart';
import 'package:prome/utils/color.dart';

class Adverteisement extends StatefulWidget {
  const Adverteisement({super.key});

  @override
  State<Adverteisement> createState() => _AdverteisementState();
}

class _AdverteisementState extends State<Adverteisement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Add",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Media File",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Image.asset(
              "assets/pp.png",
              height: 100,
              width: 100,
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
                      labelText: "Company Name",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Company Name",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
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
                      labelText: "Campaign Title",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Title",
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
                height: 170,
                child: TextField(
                  maxLines: 6,
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
                      labelText: "Campaign Description",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Description",
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
                      labelText: "Start Date",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Date",
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
                      labelText: "End Date",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Date",
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
                      hintText: "Website",
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
                      labelText: "Create",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Create",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainDashboard()));
              },
              child: Text(
                "Create",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
          ],
        ),
      ),
    );
  }
}
