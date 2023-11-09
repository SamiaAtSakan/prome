import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({super.key});

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              width: 325.34,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: backgroundColor),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    fillColor: white,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    labelText: "Search",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Search Friend",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 510,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (BuildContext ctx, index) {
                    return Card(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: GridTile(
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                            ),
                            header: Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Image.asset(
                                  "assets/srf.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "SRK",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Send Request")),
                              ],
                            ),
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
