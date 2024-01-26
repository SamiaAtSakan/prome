import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prome/apis/create_event_apii.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/textformfield.dart';
import 'package:intl/intl.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          )))
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
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                _eventStartDate.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("End Date"),
                        TextFormInputField(
                          controller: _eventEndDate,
                          hintText: "Enter Date",
                          textInputType: TextInputType.datetime,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                _eventEndDate.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                        )
                      ],
                    ),
                  )
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
                          onTap: () async {
                            TimeOfDay? pickedTime = await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            if (pickedTime != null) {
                              print(
                                  pickedTime.format(context)); //output 10:51 PM

                              // Create a DateTime object with today's date and the picked time
                              DateTime parsedTime = DateTime(
                                DateTime.now().year,
                                DateTime.now().month,
                                DateTime.now().day,
                                pickedTime.hour,
                                pickedTime.minute,
                              );

                              print(
                                  parsedTime); //output 2024-01-26 22:53:00.000

                              String formattedTime =
                                  DateFormat('hh:mm a').format(parsedTime);
                              print(formattedTime); //output 22:53:00

                              setState(() {
                                _eventStartTime.text =
                                    formattedTime; //set the value of text field.
                              });
                            } else {
                              print("Time is not selected");
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("End Time"),
                        TextFormInputField(
                          controller: _eventEndTime,
                          hintText: "Enter Time",
                          textInputType: TextInputType.datetime,
                          onTap: () async {
                            TimeOfDay? pickedTime = await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            if (pickedTime != null) {
                              print(
                                  pickedTime.format(context)); //output 10:51 PM

                              // Create a DateTime object with today's date and the picked time
                              DateTime parsedTime = DateTime(
                                DateTime.now().year,
                                DateTime.now().month,
                                DateTime.now().day,
                                pickedTime.hour,
                                pickedTime.minute,
                              );

                              print(
                                  parsedTime); //output 2024-01-26 22:53:00.000

                              String formattedTime =
                                  DateFormat('hh:mm a').format(parsedTime);
                              print(formattedTime); //output 22:53:00

                              setState(() {
                                _eventEndTime.text =
                                    formattedTime; //set the value of text field.
                              });
                            } else {
                              print("Time is not selected");
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  EventApi().createEventApi(
                      event_name.text,
                      _eventtDescription.text,
                      _eventLocation.text,
                      _eventStartDate.text,
                      _eventEndTime.text,
                      _eventStartTime.text,
                      _eventEndTime.text,
                      _image,
                      context);
                },
                child: Text(
                  "Create Product",
                  style: TextStyle(color: white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ]),
        ));
  }

  //Functions

  selectImage() async {
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
