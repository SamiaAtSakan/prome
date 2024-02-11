import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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

  final storage = FlutterSecureStorage();
  var sessionCookie;
  final serverKey = '667cc80095ee1c47cfabe800dbe9895a';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setBrowserCookie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
