import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class Invite extends StatefulWidget {
  const Invite({super.key});

  @override
  State<Invite> createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invitation Links",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Available Links",
                        style: TextStyle(color: backgroundColor),
                      ),
                      Text("0")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Generated Links",
                        style: TextStyle(color: backgroundColor),
                      ),
                      Text("0")
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Used Links",
                        style: TextStyle(color: backgroundColor),
                      ),
                      Text("0")
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Generate Links"))
        ],
      ),
    );
  }
}
