import 'package:flutter/material.dart';
import 'package:prome/screens/home_screens/comment.dart';
import 'package:prome/screens/home_screens/like.dart';
import 'package:prome/screens/post/post_detail.dart';
import 'package:prome/utils/color.dart';

class ViewFollowDetail extends StatefulWidget {
  const ViewFollowDetail({super.key});

  @override
  State<ViewFollowDetail> createState() => _ViewFollowDetailState();
}

class _ViewFollowDetailState extends State<ViewFollowDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Image.asset("assets/pp.png"),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/pp.png"),
                  radius: 30,
                ),
                title: Text(
                  "ELvaBurgerSender",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                subtitle: Text(
                  "@elent 5 months ag0",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Following",
                        style: TextStyle(color: backgroundColor),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Message",
                        style: TextStyle(color: backgroundColor),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: backgroundColor,
                      ))
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [],
                  )
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(.3),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This is my profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
