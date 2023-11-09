import 'package:flutter/material.dart';
import 'package:prome/profilepages/myearning/affliates.dart';
import 'package:prome/profilepages/myearning/invite_friends.dart';
import 'package:prome/profilepages/myearning/my_balance.dart';
import 'package:prome/profilepages/myearning/my_points.dart';
import 'package:prome/profilepages/myearning/withdrawals.dart';
import 'package:prome/utils/color.dart';

class MyEarning extends StatefulWidget {
  const MyEarning({super.key});

  @override
  State<MyEarning> createState() => _MyEarningState();
}

class _MyEarningState extends State<MyEarning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Earning",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Affliates()));
            },
            title: Text("My Affliates"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => MyBalance()));
            },
            title: Text("My Balance"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => MyPoints()));
            },
            title: Text("My Points"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Withdrawals()));
            },
            title: Text("Withdrawals"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => InviteFriends()));
            },
            title: Text("Invite Friends "),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            title: Text("Share "),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
        ],
      ),
    );
  }
}
