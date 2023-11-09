import 'package:flutter/material.dart';
import 'package:prome/profilepages/videos/add_video.dart';
import 'package:prome/screens/pages/live_video.dart';
import 'package:prome/utils/color.dart';

class MyVideos extends StatefulWidget {
  const MyVideos({super.key});

  @override
  State<MyVideos> createState() => _MyVideosState();
}

class _MyVideosState extends State<MyVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Videos",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => AddVideo()));
              },
              child: Text(
                "Add Video",
                style: TextStyle(color: backgroundColor),
              ))
        ],
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => LiveVideo()));
              },
              child: GridTile(
                child: Image.asset(
                  'assets/pp.png',
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}
