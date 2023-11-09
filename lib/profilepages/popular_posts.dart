import 'package:flutter/material.dart';
import 'package:prome/screens/post/post_detail.dart';

class PopularPost extends StatefulWidget {
  const PopularPost({super.key});

  @override
  State<PopularPost> createState() => _PopularPostState();
}

class _PopularPostState extends State<PopularPost> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => PostDetail()));
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
    });
  }
}
