import 'package:flutter/material.dart';
import 'package:prome/profilepages/groups/create_group.dart';
import 'package:prome/utils/color.dart';

class ExplorerGroups extends StatefulWidget {
  const ExplorerGroups({super.key});

  @override
  State<ExplorerGroups> createState() => _ExplorerGroupsState();
}

class _ExplorerGroupsState extends State<ExplorerGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explorer Groups",
          style: TextStyle(color: backgroundColor),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreateGroup()));
              },
              child: Text(
                "Create",
                style: TextStyle(color: backgroundColor),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Joined Groups',
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
                "Group Name",
                style: TextStyle(color: backgroundColor),
              ),
              subtitle: Text(
                "Group Type",
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
                                "Group Name",
                                style: TextStyle(color: backgroundColor),
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Join Group"))
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
