import 'package:flutter/material.dart';
import 'package:prome/screens/notifications/noti.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Notifications'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Last Activities',
              ),
              Tab(
                text: 'Friends Birthday',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Noti(), Noti(), Noti()],
        ),
      ),
    );
  }
}
