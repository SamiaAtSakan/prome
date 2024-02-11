import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prome/apis/story_api.dart';
import 'package:prome/screens/home_screens/add_story.dart';
import 'package:prome/utils/color.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? postData;
  String? accessToken;
  bool isLoad = false;
  List<Map<String, dynamic>> stories = [];
  final storage = FlutterSecureStorage();
  var sessionCookie;
  final serverKey = '667cc80095ee1c47cfabe800dbe9895a';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setBrowserCookie();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final Map<String, dynamic> storiesData =
          await StoryApi().getStories(context);

      final List<Map<String, dynamic>> fetchedStories =
          List<Map<String, dynamic>>.from(storiesData['stories']);

      setState(() {
        stories = fetchedStories;
      });
    } catch (e) {
      print('Error fetching stories: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 256),
        child: AppBar(
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
                    GestureDetector(
                      onTap: () {
                        StoryApi().getStories(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        width: 250,
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: stories.length,
                          itemBuilder: (context, index) {
                            final story = stories[index];

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 38,
                                    backgroundImage:
                                        NetworkImage(story['thumbnail']),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    story['posted'],
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: !isLoad
          ? Center(child: CircularProgressIndicator())
          : WebView(
              initialCookies: [sessionCookie],
              initialUrl:
                  'https://theprome.com/get_news_feed', // Replace with your web page URL
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
            ),
    );
  }

  var map;
  String payload = "";
  // void accds() async {
  //   accessToken = await storage.read(key: 'access_token');
  //   map = {"server_key": "667cc80095ee1c47cfabe800dbe9895a"};
  //   payload = "server_key=667cc80095ee1c47cfabe800dbe9895a";
  //   setState(() {
  //     isLoad = true;
  //   });
  // }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  Future<void> setBrowserCookie() async {
    try {
      String? accessToken = await storage.read(key: 'access_token');

      if (accessToken != null) {
        var map = {"server_key": serverKey};

        final url = Uri.parse(
            'https://theprome.com/api/set-browser-cookie?access_token=$accessToken');
        final response = await http.post(url, body: map);
        print(response.body);
        // if (response.statusCode == 302) {
        //   // Handle redirect
        String redirectUrl = response.headers['set-cookie']!;
        var val1 = redirectUrl.split(";");
        var val2 = val1[0].split("=");
        print(val2[0]);
        print(val2[1]);

        sessionCookie = WebViewCookie(
          name: val2[0],
          value: val2[1],
          domain: 'https://theprome.com/get_news_feed',
        );
        setState(() {
          isLoad = true;
        });

        // print(redirectUrl);
        // print(response.headers);
      } else {
        print('Access token is null');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
