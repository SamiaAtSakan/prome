import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset("assets/srf.png"),
                title: Text("Zain: Like Your Post"),
                subtitle: Text("2 hrs ago"),
              ),
              Divider(
                color: Colors.grey.withOpacity(.2),
              ),
              ListTile(
                leading: Image.asset("assets/srf.png"),
                title: Text("Zain: Comment on Your Profile"),
                subtitle: Text("2 hrs ago"),
              ),
            ],
          ),
        );
      }),
    );
  }
}
