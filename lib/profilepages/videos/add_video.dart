import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({super.key});

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Post",
          style: TextStyle(color: backgroundColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Post",
                style: TextStyle(color: backgroundColor),
              ))
        ],
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.browse_gallery,
                      color: Colors.green,
                      size: 30,
                    ),
                    label: Text(
                      "Image Gallery",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videogame_asset,
                      color: Colors.red,
                      size: 30,
                    ),
                    label: Text(
                      "Video Gallery",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.contact_page,
                      color: Colors.blue,
                      size: 30,
                    ),
                    label: Text(
                      "Mention Contact",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_pin,
                      color: Colors.orangeAccent,
                      size: 30,
                    ),
                    label: Text(
                      "Location / Place",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    label: Text(
                      "Feeling/Activity",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.gif,
                      color: Colors.greenAccent,
                      size: 30,
                    ),
                    label: Text(
                      "Gif",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.file_copy,
                      color: Colors.yellowAccent,
                      size: 30,
                    ),
                    label: Text(
                      "File",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.music_note,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                    label: Text(
                      "Music",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.record_voice_over,
                      color: Colors.orange,
                      size: 30,
                    ),
                    label: Text(
                      "Voice Record",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.poll,
                      color: Colors.purple,
                      size: 30,
                    ),
                    label: Text(
                      "Polls",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: backgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Add Post",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.browse_gallery,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.chat,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
