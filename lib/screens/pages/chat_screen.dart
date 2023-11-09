import 'package:flutter/material.dart';
import 'package:prome/screens/pages/conversation_list.dart';
import 'package:prome/utils/color.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/srf.png"),
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "SRK",
          style: TextStyle(color: textColorTitle, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera,
              color: backgroundColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.edit,
              color: backgroundColor,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
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
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: 5,
                // the number of items in the list

                // display each item of the product list
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ConverstationList()));
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/srf.png"),
                    ),
                    title: Text(
                      "Shah Rukh Khan",
                      style: TextStyle(
                          color: textColorTitle,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      "You: What’s man! · 9:40 AM \n'",
                      style: TextStyle(
                          color: sub,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
