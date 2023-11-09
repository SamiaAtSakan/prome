import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class Themes extends StatefulWidget {
  const Themes({super.key});

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Themes",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Dark Theme",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Light Theme",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Set By Battery",
              style: TextStyle(
                  color: textColorTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
