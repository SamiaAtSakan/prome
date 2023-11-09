import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class CronaVirus extends StatefulWidget {
  const CronaVirus({super.key});

  @override
  State<CronaVirus> createState() => _CronaVirusState();
}

class _CronaVirusState extends State<CronaVirus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Crona Virus",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/paint.png",
                height: 200,
                width: 300,
              ),
            ),
            Text(
              "Coronavirus (COVID 19) Information Center",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.cases,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "17",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "New Cases",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "0",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "Death",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "0",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "Death",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.supervised_user_circle,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "0",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "Active Cases",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "0",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "Total Death",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.timer,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "23 January 2023",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "Last Updated",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
