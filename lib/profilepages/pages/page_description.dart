import 'package:flutter/material.dart';
import 'package:prome/profilepages/pages/pages.dart';
import 'package:prome/utils/color.dart';

class PageDescription extends StatefulWidget {
  const PageDescription({super.key});

  @override
  State<PageDescription> createState() => _PageDescriptionState();
}

class _PageDescriptionState extends State<PageDescription> {
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
                    labelText: "Page Description",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Description",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Flexible(child: Container()),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Pages()));
            },
            child: Text(
              "Finish",
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
