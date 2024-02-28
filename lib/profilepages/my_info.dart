import 'package:flutter/material.dart';

import 'package:prome/utils/color.dart';
import 'package:prome/widgets/info_card_widget.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  //Functions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Information",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/newlogo.png",
                height: 200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCountCard("Followers", "12", Icons.follow_the_signs),
                SizedBox(width: 16),
                buildCountCard(
                    "Following", "321", Icons.follow_the_signs_outlined),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCountCard("Joined Groups", "243", Icons.group),
                SizedBox(width: 16),
                buildCountCard("Liked Pages", "213", Icons.pages),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
