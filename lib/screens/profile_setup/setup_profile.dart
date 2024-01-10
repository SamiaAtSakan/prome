import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';

import 'package:prome/screens/profile_setup/setup_profile_2.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/image_utils.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class SetUpProfile extends StatefulWidget {
  const SetUpProfile({super.key});

  @override
  State<SetUpProfile> createState() => _SetUpProfileState();
}

class _SetUpProfileState extends State<SetUpProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _nameLastController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  Uint8List? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Stack(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormInputField(
                hintText: 'First Name',
                textInputType: TextInputType.text,
                controller: _nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormInputField(
                hintText: 'Last Name',
                textInputType: TextInputType.text,
                controller: _nameLastController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormInputField(
                hintText: 'Location',
                textInputType: TextInputType.text,
                controller: _locationController,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                if (_nameController.text.isEmpty) {
                  messageBar("First Name is required", context);
                } else if (_nameLastController.text.isEmpty) {
                  messageBar("Last Name is Required", context);
                } else if (_locationController.text.isEmpty) {
                  messageBar("Location is Required", context);
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SetupProfile2()));
                }
              },
              child: Text(
                "Next",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
            const SizedBox(
              height: 15,
            ),
            Flexible(child: Container()),
          ],
        ),
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
