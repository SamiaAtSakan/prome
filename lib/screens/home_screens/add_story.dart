import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Write Your Thoughts",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ))
        ],
      ),
    );
  }
}
