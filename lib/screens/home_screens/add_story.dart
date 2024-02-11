import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prome/apis/story_api.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class AddStory extends StatefulWidget {
  const AddStory({Key? key}) : super(key: key);

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  TextEditingController controller = TextEditingController();
  TextEditingController _controllerDescription = TextEditingController();
  File? _pickedFile;
  bool _isImage = true;
  bool isLoading = false;

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
              _pickedFile != null
                  ? CircleAvatar(
                      radius: 59,
                      backgroundImage:
                          _isImage ? FileImage(_pickedFile!) : null,
                      child: _isImage
                          ? null
                          : Icon(Icons.play_arrow,
                              size: 40, color: Colors.white),
                    )
                  : CircleAvatar(
                      radius: 59,
                      backgroundImage: NetworkImage(
                          'https://static.remove.bg/remove-bg-web/a6eefcd21dff1bbc2448264c32f7b48d7380cb17/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png'),
                    ),
              Positioned(
                bottom: -10,
                left: 70,
                child: IconButton(
                  onPressed: _pickFile,
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Select Media Type"),
          TextButton(
            onPressed: () {
              setState(() {
                _isImage = !_isImage;
              });
            },
            child: Text(_isImage ? "Change To Video" : "Change To Picture"),
          ),
          Center(
            child: TextFormInputField(
              controller: controller,
              hintText: "Story Title",
              textInputType: TextInputType.text,
            ),
          ),
          Center(
            child: TextFormInputField(
              controller: _controllerDescription,
              hintText: "Story Description",
              textInputType: TextInputType.text,
            ),
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ElevatedButton(
                  onPressed: () async {
                    if (_pickedFile == null) {
                      messageBar(
                        "Please select Video or Image for the story",
                        context,
                      );
                    } else if (controller.text.isEmpty) {
                      messageBar("Title is Required", context);
                    } else if (_controllerDescription.text.isEmpty) {
                      messageBar("Description is Required", context);
                    } else {
                      setState(() {
                        isLoading = true;
                      });
                      StoryApi().createStoryApi(
                        controller.text,
                        _controllerDescription.text,
                        _pickedFile,
                        context,
                        _isImage ? 'image' : 'video',
                      );
                      setState(() {
                        isLoading = false;
                      });
                      messageBar("Story is Posted Successfully", context);
                    }
                  },
                  child: Text(
                    "Create",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor,
                    fixedSize: Size(325, 60),
                  ),
                ),
        ],
      ),
    );
  }

  Future<void> _pickFile() async {
    final ImagePicker _picker = ImagePicker();

    try {
      XFile? pickedFile;

      if (_isImage) {
        pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      } else {
        pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
      }

      if (pickedFile != null) {
        setState(() {
          _pickedFile = File(pickedFile!.path);
        });
      }
    } catch (e) {
      print('Error picking file: $e');
    }
  }
}
