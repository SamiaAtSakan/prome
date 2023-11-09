import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Friends 4k",
            style: TextStyle(
                color: textColorTitle,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView.builder(
            // the number of items in the list

            // display each item of the product list
            itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/srf.png"),
            ),
            title: Text(
              "Shah Rukh Khan",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: Text(
              "@srk",
              style: TextStyle(
                  color: sub, fontSize: 12, fontWeight: FontWeight.w400),
            ),
            trailing: OutlinedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (builder) => MainDashboard()));
              },
              child: Text(
                "Friends",
                style: TextStyle(color: backgroundColor, fontSize: 10),
              ),
              style: OutlinedButton.styleFrom(fixedSize: Size(120, 34)),
            ),
          );
        }));
  }
}
