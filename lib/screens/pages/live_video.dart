import 'package:flutter/material.dart';
import 'package:prome/screens/video/live_video_comment_screen.dart';
import 'package:prome/utils/color.dart';
import 'package:video_player/video_player.dart';

class LiveVideo extends StatefulWidget {
  const LiveVideo({super.key});

  @override
  State<LiveVideo> createState() => _LiveVideoState();
}

class _LiveVideoState extends State<LiveVideo> {
  late VideoPlayerController? videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                videoPlayerController!.value.isPlaying
                    ? videoPlayerController!.pause()
                    : videoPlayerController!.play();
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 1.1,
              child: videoPlayerController!.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: videoPlayerController!.value.aspectRatio,
                      child: VideoPlayer(videoPlayerController!),
                    )
                  : Container(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 210,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextButton.icon(
                                    icon: Icon(
                                      Icons.timelapse,
                                      color: backgroundColor,
                                    ),
                                    label: const Text(
                                      'Share to my Timeline',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                  TextButton.icon(
                                    icon: Icon(
                                      Icons.group,
                                      color: backgroundColor,
                                    ),
                                    label: const Text(
                                      'Share to a Group',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                  TextButton.icon(
                                    icon: Icon(
                                      Icons.share,
                                      color: backgroundColor,
                                    ),
                                    label: const Text(
                                      'More Options',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                  TextButton.icon(
                                    icon: Icon(
                                      Icons.pages,
                                      color: backgroundColor,
                                    ),
                                    label: const Text(
                                      'Share to a Page',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Text(
                    "23k",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => VideoLiveCommentScreen()));
                    },
                    child: Image.asset(
                      "assets/Vector.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Text(
                    "23k",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (builder) => LikeScreen()));
                    },
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "23k",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
