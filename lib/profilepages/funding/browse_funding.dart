import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class BrowseFunding extends StatefulWidget {
  const BrowseFunding({super.key});

  @override
  State<BrowseFunding> createState() => _BrowseFundingState();
}

class _BrowseFundingState extends State<BrowseFunding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Joined Funding',
                  style: TextStyle(
                      color: backgroundColor, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: backgroundColor, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Card(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(
                      color: backgroundColor, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: backgroundColor, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/pp.png"),
                              ),
                              Text(
                                "Funding Name",
                                style: TextStyle(color: backgroundColor),
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Send Request"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
