import 'package:flutter/material.dart';
import 'package:prome/apis/page_api.dart';
import 'package:prome/profilepages/pages/create_page.dart';
import 'package:prome/utils/color.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Pages",
          style: TextStyle(color: backgroundColor),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreatePage()));
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
                  'Joined Pages',
                  style: TextStyle(
                      color: backgroundColor, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    PageApi().getPageInfo();
                  },
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
                "Pages Name",
                style: TextStyle(color: backgroundColor),
              ),
              subtitle: Text(
                "Page Type",
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
                                "Page Name",
                                style: TextStyle(color: backgroundColor),
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Join Page"))
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
