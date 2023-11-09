import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({super.key});

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Invite Friends'),
        ),
        body: ListView.builder(
            // the number of items in the list

            // display each item of the product list
            itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/srf.png"),
            ),
            title: Text(
              "Shah Ruth Khan",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
            trailing:
                ElevatedButton(onPressed: () {}, child: Text("Invite Friends")),
          );
        }));
  }
}
