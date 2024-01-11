import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prome/main_dashboard.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/image_utils.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  TextEditingController controller = TextEditingController();
  TextEditingController _controllerDescription = TextEditingController();
  Uint8List? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Add The Story",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              _image != null
                  ? CircleAvatar(
                      radius: 59, backgroundImage: MemoryImage(_image!))
                  : CircleAvatar(
                      radius: 59,
                      backgroundImage: NetworkImage(
                          'https://static.remove.bg/remove-bg-web/a6eefcd21dff1bbc2448264c32f7b48d7380cb17/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
                    ),
              Positioned(
                  bottom: -10,
                  left: 70,
                  child: IconButton(
                      onPressed: () => selectImage(),
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                      )))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text("Add Video Clip"),
          ),
          Center(
            child: TextFormInputField(
                controller: controller,
                hintText: "Story Title",
                textInputType: TextInputType.text),
          ),
          Center(
            child: TextFormInputField(
                controller: _controllerDescription,
                hintText: "Story Description",
                textInputType: TextInputType.text),
          ),
          ElevatedButton(
            onPressed: () {
              if (_image == null) {
                messageBar(
                    "Please select Video or Image for the story", context);
              } else {
                messageBar("Story is Created", context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainDashboard()));
              }
            },
            child: Text(
              "Create",
              style: TextStyle(color: white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
          ),
        ],
      ),
    );
  }

  selectImage() async {
    Uint8List ui = await pickImage(ImageSource.gallery);
    setState(() {
      _image = ui;
    });
  }
}
