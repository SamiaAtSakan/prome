import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class MyPoints extends StatefulWidget {
  const MyPoints({super.key});

  @override
  State<MyPoints> createState() => _MyPointsState();
}

class _MyPointsState extends State<MyPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Points",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Column(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Points",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text("0")
                          ],
                        ),
                        Text(
                          "23 Dec 2023",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Completing any post'), Text('10%')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Creating any post'), Text('40%')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Reacting any post'), Text('30%')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Creating a new blog'), Text('20%')],
            ),
          ),
          Text(
            "Your earned points will automatically goto\nWallet",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
