import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class Fundings extends StatefulWidget {
  const Fundings({super.key});

  @override
  State<Fundings> createState() => _FundingsState();
}

class _FundingsState extends State<Fundings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/pp.png"),
                  ),
                  title: Text(
                    "Funding Name",
                    style: TextStyle(color: backgroundColor),
                  ),
                  subtitle: Text(
                    "Funding Amount",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
