import 'package:flutter/material.dart';
import 'package:prome/profilepages/following/view_follow_detail.dart';
import 'package:prome/utils/color.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Following",
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ViewFollowDetail()));
            },
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/srf.png"),
            ),
            title: Text(
              "Shah Ruth Khan",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            trailing: OutlinedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (builder) => MainDashboard()));
              },
              child: Text(
                "Following",
                style: TextStyle(color: backgroundColor, fontSize: 10),
              ),
              style: OutlinedButton.styleFrom(fixedSize: Size(120, 34)),
            ),
          );
        }));
  }
}
