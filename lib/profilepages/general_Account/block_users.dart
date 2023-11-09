import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class BlockUsers extends StatefulWidget {
  const BlockUsers({super.key});

  @override
  State<BlockUsers> createState() => _BlockUsersState();
}

class _BlockUsersState extends State<BlockUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Block Users",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: ListView.builder(
          // the number of items in the list

          // display each item of the product list
          itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/srf.png"),
              ),
              title: Text(
                "Shah Ruth Khan",
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              trailing:
                  ElevatedButton(onPressed: () {}, child: Text("Unblock")),
            ),
            Divider()
          ],
        );
      }),
    );
  }
}
