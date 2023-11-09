import 'package:flutter/material.dart';
import 'package:prome/screens/friends/find_friends.dart';
import 'package:prome/screens/pages/friend_list.dart';

class FriendsTab extends StatefulWidget {
  const FriendsTab({super.key});

  @override
  State<FriendsTab> createState() => _FriendsTabState();
}

class _FriendsTabState extends State<FriendsTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Friends'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Friends',
              ),
              Tab(
                text: 'Find Friends',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FriendList(),
            FindFriends(),
          ],
        ),
      ),
    );
  }
}
