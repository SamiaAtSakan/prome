import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        centerTitle: true,
        title: Text("Create Post"),
        actions: [TextButton(onPressed: () {}, child: Text("Post"))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset("assets/srf.png"),
              title: Text("Public"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "What's up in your mind"),
              maxLines: 6,
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.image,
              color: backgroundColor,
            ),
            label: Text(
              "Add a Photo",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.video_camera_front,
              color: backgroundColor,
            ),
            label: Text(
              "Add a Video",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.attach_file,
              color: backgroundColor,
            ),
            label: Text(
              "Add a Document",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.color_lens,
              color: backgroundColor,
            ),
            label: Text(
              "Background Color",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.gif,
              color: backgroundColor,
            ),
            label: Text(
              "GIF",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.live_tv,
              color: backgroundColor,
            ),
            label: Text(
              "Live Video",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.camera,
              color: backgroundColor,
            ),
            label: Text(
              "Camera",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
