import 'package:flutter/material.dart';
import 'package:prome/profilepages/pages/page_category.dart';
import 'package:prome/utils/color.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Page",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
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
                    labelText: "Page Title",
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
                    labelText: "Page User Name",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "User Name",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Flexible(child: Container()),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => PageCategory()));
            },
            child: Text(
              "Next",
              style: TextStyle(color: white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
