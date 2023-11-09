import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class Memories extends StatefulWidget {
  const Memories({super.key});

  @override
  State<Memories> createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Memories",
          style: TextStyle(color: background),
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
            return GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(
                  'Post',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("5 Months ago"),
                trailing: const Icon(Icons.add),
              ),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/019/896/008/non_2x/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
