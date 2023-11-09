import 'package:flutter/material.dart';

class MyGamesPlay extends StatefulWidget {
  const MyGamesPlay({super.key});

  @override
  State<MyGamesPlay> createState() => _MyGamesPlayState();
}

class _MyGamesPlayState extends State<MyGamesPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (builder) => AlbumDetail()));
              },
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    'Snake Game',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Center(
                      child: Text(
                    "Play",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
                child: Image.asset(
                  'assets/pp.png',
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}
