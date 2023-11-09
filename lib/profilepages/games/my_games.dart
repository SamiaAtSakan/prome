import 'package:flutter/material.dart';
import 'package:prome/profilepages/games/browse_games.dart';
import 'package:prome/profilepages/games/my_game_play.dart';

class MyGames extends StatefulWidget {
  const MyGames({super.key});

  @override
  State<MyGames> createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
          centerTitle: true,
          title: const Text('MyGames'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Browse Games',
                icon: Icon(Icons.gamepad),
              ),
              Tab(
                text: 'Games',
                icon: Icon(Icons.games),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[BrowseGames(), MyGamesPlay()],
        ),
      ),
    );
  }
}
