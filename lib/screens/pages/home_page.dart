import 'package:flutter/material.dart';
import 'package:prome/screens/home_screens/add_story.dart';
import 'package:prome/screens/home_screens/comment.dart';
import 'package:prome/screens/home_screens/like.dart';
import 'package:prome/screens/notifications/notify.dart';
import 'package:prome/screens/post/post_detail.dart';
import 'package:prome/utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 256),
          child: AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message_sharp,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Notify()));
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ))
            ],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: backgroundColor,
            flexibleSpace: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 256),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => AddStory()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/add.png",
                              height: 80,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Add Story",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: 250,
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/srf.png",
                                    height: 75,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "SRK",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => PostDetail()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/rext.png",
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.asset("assets/srf.png"),
                          title: Text(
                            "Jemmy Roy",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text("19 hr ago"),
                          trailing: Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                        ),
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
                            Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                              size: 30,
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
                                        builder: (builder) => CommentScreen()));
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => LikeScreen()));
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
              ),
              ListTile(
                leading: Image.asset("assets/srf.png"),
                title: Text("What a Great Image"),
                subtitle: Row(
                  children: [Text("1 Like"), Text("1 Comment")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
