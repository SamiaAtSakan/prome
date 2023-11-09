import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class Affliates extends StatefulWidget {
  const Affliates({super.key});

  @override
  State<Affliates> createState() => _AffliatesState();
}

class _AffliatesState extends State<Affliates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Affliates",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/logo.png"),
            ),
            title: Text("Name of the User"),
            subtitle: Text("@username"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Earn up to 5% for each user your refer to us",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),
          Text("www.google.com"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Share It"))
        ],
      ),
    );
  }
}
