import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/textformfield.dart';

class AddMarketPlace extends StatefulWidget {
  const AddMarketPlace({super.key});

  @override
  State<AddMarketPlace> createState() => _AddMarketPlaceState();
}

class _AddMarketPlaceState extends State<AddMarketPlace> {
  TextEditingController _productTitle = TextEditingController();
  TextEditingController _productDescription = TextEditingController();
  TextEditingController _productLocation = TextEditingController();
  TextEditingController _productPrice = TextEditingController();
  File? _image;
  int _selectedValue = 1;
  int _selectedCategory = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Create New Product",
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
                controller: _productTitle,
                hintText: "Product Title",
                textInputType: TextInputType.name,
              ),
            ),

            Center(
              child: TextFormInputField(
                maxLines: 6,
                controller: _productDescription,
                hintText: "Product Description",
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 10),

            Center(
              child: TextFormInputField(
                controller: _productPrice,
                hintText: "Product Price",
                textInputType: TextInputType.number,
              ),
            ),

            Center(
              child: TextFormInputField(
                hintText: "Location",
                controller: _productLocation,
                textInputType: TextInputType.text,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Product Type",
                style: TextStyle(color: backgroundColor),
              ),
            ),
            RadioListTile(
              title: Text('New'), // Display the title for option
              value: 1, // Assign a value of 1 to this option
              groupValue:
                  _selectedValue, // Use _selectedValue to track the selected option
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 1 is selected
                });
              },
            ),

            // Create a RadioListTile for option 2
            RadioListTile(
              title: Text('Old'), // Display the title for option 2
              value: 2, // Assign a value of 2 to this option
              groupValue:
                  _selectedValue, // Use _selectedValue to track the selected option
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 2 is selected
                });
              },
            ),
            //Category
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Product Category",
                style: TextStyle(color: backgroundColor),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Other',
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option
                        value: 1, // Assign a value of 1 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Auto & Vehicles',
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option 2
                        value: 2, // Assign a value of 2 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 2 is selected
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Baby & Children's Products",
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option
                        value: 3, // Assign a value of 1 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Beauty Products & Services',
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option 2
                        value: 4, // Assign a value of 2 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 2 is selected
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Consumer Electronics",
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option
                        value: 5, // Assign a value of 1 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Computers & Peripherals',
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option 2
                        value: 6, // Assign a value of 2 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 2 is selected
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Dating Services",
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option
                        value: 7, // Assign a value of 1 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Financial Services',
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option 2
                        value: 8, // Assign a value of 2 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 2 is selected
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          "Gifts & Occasions",
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option
                        value: 9, // Assign a value of 1 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 1 is selected
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Home & Garden',
                          style: TextStyle(fontSize: 12),
                        ), // Display the title for option 2
                        value: 10, // Assign a value of 2 to this option
                        groupValue:
                            _selectedCategory, // Use _selectedValue to track the selected option
                        onChanged: (value) {
                          setState(() {
                            _selectedCategory =
                                value!; // Update _selectedValue when option 2 is selected
                          });
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Create a RadioListTile for option 2

            Center(
              child: ElevatedButton(
                onPressed: () {},
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
