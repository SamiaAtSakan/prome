import 'package:flutter/material.dart';
import 'package:prome/profilepages/groups/group_category.dart';
import 'package:prome/utils/color.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
                      labelText: "Group Title",
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
                      labelText: "Group User Name",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "User Name",
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
                      labelText: "Group Description",
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
                    MaterialPageRoute(builder: (builder) => GroupCategory()));
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
