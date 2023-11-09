import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class VideoLiveCommentScreen extends StatefulWidget {
  const VideoLiveCommentScreen({super.key});

  @override
  State<VideoLiveCommentScreen> createState() => _VideoLiveCommentScreenState();
}

class _VideoLiveCommentScreenState extends State<VideoLiveCommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Comment",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // ListView.builder(
          //   itemCount: messages.length,
          //   shrinkWrap: true,
          //   padding: EdgeInsets.only(top: 10, bottom: 10),
          //   physics: NeverScrollableScrollPhysics(),
          //   itemBuilder: (context, index) {
          //     return Container(
          //       padding:
          //           EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
          //       child: Align(
          //         alignment: (messages[index].messageType == "receiver"
          //             ? Alignment.topLeft
          //             : Alignment.topRight),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             color: (messages[index].messageType == "receiver"
          //                 ? Colors.grey.shade200
          //                 : Colors.blue[200]),
          //           ),
          //           padding: EdgeInsets.all(16),
          //           child: Text(
          //             messages[index].messageContent,
          //             style: TextStyle(fontSize: 15),
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Comment...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.mic,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.attach_file,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.send,
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
