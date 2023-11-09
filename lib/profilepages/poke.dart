import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class Poke extends StatefulWidget {
  const Poke({super.key});

  @override
  State<Poke> createState() => _PokeState();
}

class _PokeState extends State<Poke> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Poke",
            style: TextStyle(
                color: textColorTitle,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView.builder(
            // the number of items in the list

            // display each item of the product list
            itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/srf.png"),
            ),
            title: Text(
              "Shah Ruth Khan Poke You",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          );
        }));
  }
}
