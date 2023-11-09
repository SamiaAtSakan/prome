import 'package:flutter/material.dart';
import 'package:prome/profilepages/albums/album_detail.dart';
import 'package:prome/profilepages/albums/create_album.dart';
import 'package:prome/utils/color.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Album",
          style: TextStyle(color: backgroundColor),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreateAlbum()));
              },
              child: Text(
                "Create Album",
                style: TextStyle(color: backgroundColor),
              ))
        ],
      ),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => AlbumDetail()));
              },
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    'Fawad',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("2 Photos"),
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
