import 'package:flutter/material.dart';
import 'package:prome/profilepages/funding/funding.dart';
import 'package:prome/utils/color.dart';

class CreateFunding extends StatefulWidget {
  const CreateFunding({super.key});

  @override
  State<CreateFunding> createState() => _CreateFundingState();
}

class _CreateFundingState extends State<CreateFunding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Fund",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                      labelText: "Funding Title",
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
                      labelText: "Funding Amount",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Amount",
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
                      labelText: "Funding Description",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Description",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Funding()));
              },
              child: Text(
                "Finsh",
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
