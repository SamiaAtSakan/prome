import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class MyImages extends StatefulWidget {
  const MyImages({super.key});

  @override
  State<MyImages> createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Images",
          style: TextStyle(color: backgroundColor),
        ),
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
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (builder) => AlbumDetail()));
              },
              child: GridTile(
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
