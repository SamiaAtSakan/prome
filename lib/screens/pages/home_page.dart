import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prome/apis/news_feed_api.dart';

import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Map<String, dynamic>>(
        future: NewsFeedApi().cookieApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              // Assuming the API response contains HTML content
              String htmlContent = snapshot.data?['html_content'] ?? '';
              return WebView(
                initialUrl: 'about:blank',
                onWebViewCreated: (WebViewController webViewController) {
                  webViewController.loadUrl(Uri.dataFromString(
                    htmlContent,
                    mimeType: 'text/html',
                    encoding: Encoding.getByName('utf-8'),
                  ).toString());
                },
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
