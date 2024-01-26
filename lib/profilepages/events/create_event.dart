import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prome/apis/create_event_apii.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';
import 'package:intl/intl.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  TextEditingController event_name = TextEditingController();
  TextEditingController _eventtDescription = TextEditingController();
  TextEditingController _eventLocation = TextEditingController();
  TextEditingController _eventStartDate = TextEditingController();
  TextEditingController _eventEndDate = TextEditingController();
  TextEditingController _eventStartTime = TextEditingController();
  TextEditingController _eventEndTime = TextEditingController();
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Event",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 59, backgroundImage: FileImage(_image!))
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
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextFormInputField(
                controller: event_name,
                hintText: "Event Name",
                textInputType: TextInputType.name,
              ),
            ),
            Center(
              child: TextFormInputField(
                maxLines: 6,
                controller: _eventtDescription,
                hintText: "Event Description",
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextFormInputField(
                hintText: "Location",
                controller: _eventLocation,
                textInputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start Date"),
                        TextFormInputField(
                          controller: _eventStartDate,
                          hintText: "Enter Date",
                          textInputType: TextInputType.datetime,
                          onTap: () => pickDate(_eventStartDate),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("End Date"),
                        TextFormInputField(
                          controller: _eventEndDate,
                          hintText: "Enter Date",
                          textInputType: TextInputType.datetime,
                          onTap: () => pickDate(_eventEndDate),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start Time"),
                        TextFormInputField(
                          controller: _eventStartTime,
                          hintText: "Enter Time",
                          textInputType: TextInputType.datetime,
                          onTap: () => pickTime(_eventStartTime),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("End Time"),
                        TextFormInputField(
                          controller: _eventEndTime,
                          hintText: "Enter Time",
                          textInputType: TextInputType.datetime,
                          onTap: () => pickTime(_eventEndTime),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (validateFields()) {
                    createEvent();
                  }
                },
                child: Text(
                  "Create Event",
                  style: TextStyle(color: white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  fixedSize: Size(325, 60),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void pickDate(TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        controller.text = formattedDate;
      });
    }
  }

  void pickTime(TextEditingController controller) async {
    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );

    if (pickedTime != null) {
      DateTime parsedTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        pickedTime.hour,
        pickedTime.minute,
      );

      String formattedTime = DateFormat('hh:mm a').format(parsedTime);
      setState(() {
        controller.text = formattedTime;
      });
    }
  }

  bool validateFields() {
    if (event_name.text.isEmpty ||
        _eventtDescription.text.isEmpty ||
        _eventLocation.text.isEmpty ||
        _eventStartDate.text.isEmpty ||
        _eventEndDate.text.isEmpty ||
        _eventStartTime.text.isEmpty ||
        _eventEndTime.text.isEmpty) {
      messageBar("Please fill in all required fields.", context);
      return false;
    }
    return true;
  }

  void createEvent() async {
    try {
      EventApi().createEventApi(
        event_name.text,
        _eventtDescription.text,
        _eventLocation.text,
        _eventStartDate.text,
        _eventEndDate.text,
        _eventStartTime.text,
        _eventEndTime.text,
        _image,
        context,
      );

      // Optionally, you can navigate to a different screen after successful event creation.
    } catch (error) {
      print('Failed to create event: $error');
      messageBar("Failed to create event. Please try again.", context);
    }
  }

  void selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
}
