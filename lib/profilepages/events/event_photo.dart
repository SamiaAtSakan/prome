import 'package:flutter/material.dart';
import 'package:prome/profilepages/events/event_page.dart';
import 'package:prome/utils/color.dart';

class EventPhoto extends StatefulWidget {
  const EventPhoto({super.key});

  @override
  State<EventPhoto> createState() => _EventPhotoState();
}

class _EventPhotoState extends State<EventPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Event Page",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Add Event Photo",
              style: TextStyle(color: backgroundColor, fontSize: 20),
            ),
          ),
          Image.asset("assets/pp.png"),
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
                  labelText: "Event Location",
                  labelStyle: TextStyle(color: backgroundColor),
                  hintText: "Event Location",
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
                  labelText: "Event Description",
                  labelStyle: TextStyle(color: backgroundColor),
                  hintText: "Event Description",
                  hintStyle: TextStyle(color: textColorTitle)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => EventPage()));
            },
            child: Text(
              "Finished",
              style: TextStyle(color: white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor, fixedSize: Size(200, 50)),
          ),
        ],
      ),
    );
  }
}
