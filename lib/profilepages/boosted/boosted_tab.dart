import 'package:flutter/material.dart';
import 'package:prome/profilepages/boosted/boosted_page.dart';
import 'package:prome/profilepages/boosted/boosted_post.dart';

class Boosted extends StatefulWidget {
  const Boosted({super.key});

  @override
  State<Boosted> createState() => _BoostedState();
}

class _BoostedState extends State<Boosted> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Boosted'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Boosted Posts',
                icon: Icon(Icons.podcasts),
              ),
              Tab(
                text: 'Boosted Pages',
                icon: Icon(Icons.pages),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[BoostedPost(), BoostedPage()],
        ),
      ),
    );
  }
}
