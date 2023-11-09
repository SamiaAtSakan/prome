import 'package:flutter/material.dart';
import 'package:prome/screens/home_screens/comment.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/rext.png",
            width: MediaQuery.of(context).size.width,
            filterQuality: FilterQuality.high,
            height: 300,
            fit: BoxFit.cover,
          ),
          ListTile(
            leading: Image.asset("assets/srf.png"),
            title: Text(
              "Jemmy Roy",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text("19 hr ago"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(.2),
          ),
          Container(
            height: 230,
            child: ListView.builder(itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.asset("assets/srf.png"),
                    title: Text("What A Great Place"),
                    subtitle: Text("2 hrs ago"),
                    trailing: Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor .",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(.2),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
