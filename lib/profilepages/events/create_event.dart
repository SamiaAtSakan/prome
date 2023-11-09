import 'package:flutter/material.dart';
import 'package:prome/profilepages/events/event_photo.dart';
import 'package:prome/utils/color.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Group",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                      labelText: "Event Name",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Name",
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
                      labelText: "Event Start Date",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Event Start Date",
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
                      labelText: "Event Start Time",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Event Start Time",
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
                      labelText: "Event End Date",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Event End Date",
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
                      labelText: "Event End Time",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Event End Time",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => EventPhoto()));
              },
              child: Text(
                "Next",
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
