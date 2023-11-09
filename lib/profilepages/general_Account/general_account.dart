import 'package:flutter/material.dart';
import 'package:prome/profilepages/general_Account/block_users.dart';
import 'package:prome/profilepages/general_Account/create_password.dart';
import 'package:prome/profilepages/general_Account/edit_about.dart';
import 'package:prome/profilepages/general_Account/edit_profile.dart';
import 'package:prome/profilepages/general_Account/my_account.dart';
import 'package:prome/profilepages/general_Account/theme.dart';
import 'package:prome/profilepages/general_Account/two_factor.dart';
import 'package:prome/utils/color.dart';

class GeneralAccount extends StatefulWidget {
  const GeneralAccount({super.key});

  @override
  State<GeneralAccount> createState() => _GeneralAccountState();
}

class _GeneralAccountState extends State<GeneralAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Account",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => EditProfile()));
              },
              title: Text("Edit Profile"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => EditAbout()));
              },
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MyAccount()));
              },
              title: Text("My Account"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("Social Links"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => BlockUsers()));
              },
              title: Text("Blocked Users"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("Verifications"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Themes()));
              },
              title: Text("Theme"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreatePassword()));
              },
              title: Text("Password"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => TwoFactor()));
              },
              title: Text("Two-factor-authentication"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("Delete Account"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
