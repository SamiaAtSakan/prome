import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prome/apis/news_feed_api.dart';
import 'package:prome/screens/home_screens/add_story.dart';
import 'package:prome/screens/notifications/notify.dart';
import 'package:prome/utils/color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Map<String, dynamic>> _newsFeed;
  String htmlContent = '';

  @override
  void initState() {
    super.initState();
    _newsFeed = NewsFeedApi().getNewsFeed();
  }

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
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) => Notify()),
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
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
                            builder: (builder) => AddStory(),
                          ),
                        );
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
      body: FutureBuilder(
        future: _newsFeed,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            // Extract the HTML content from the API response
            String htmlContent = snapshot.data!['html_content'];

            return WebView(
              initialUrl: 'about:blank',
              onWebViewCreated: (WebViewController webViewController) {
                // Load HTML content into WebView
                webViewController.loadUrl(Uri.dataFromString(
                  htmlContent,
                  mimeType: 'text/html',
                  encoding: Encoding.getByName('utf-8'),
                ).toString());
              },
            );
          }
        },
      ),
    ));
  }
}
