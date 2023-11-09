import 'package:flutter/material.dart';
import 'package:prome/screens/post/post_detail.dart';

class BoostedPost extends StatefulWidget {
  const BoostedPost({super.key});

  @override
  State<BoostedPost> createState() => _BoostedPostState();
}

class _BoostedPostState extends State<BoostedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => PostDetail()));
            },
            child: Column(
              children: [
                Image.asset(
                  "assets/rext.png",
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                ),
                ListTile(
                  leading: Image.asset("assets/srf.png"),
                  title: Text("Mark this post as favourite"),
                  subtitle: Text("2 hrs ago"),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
