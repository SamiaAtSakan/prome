import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prome/apis/create_product_api.dart';
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
  String _selectedValue = "New";
  String _selectedCategory = "Auto & Vehicles";

  Map<String, int> categoryMap = {
    'Auto & Vehicles': 1,
    "Baby & Children's Products": 2,
    'Beauty Products & Services': 3,
    'Consumer Electronics': 4,
    'Computers & Peripherals': 5,
    'Dating Services': 6,
    "Financial Services": 7,
    'Gifts & Occasions': 8,
    'Home & Garden': 9,
    'Others': 10,
  };
  List<String> categoryNames = [
    'Auto & Vehicles',
    "Baby & Children's Products",
    'Beauty Products & Services',
    'Consumer Electronics',
    'Computers & Peripherals',
    'Dating Services',
    "Financial Services",
    'Gifts & Occasions',
    'Home & Garden',
    'Others',
  ];
  var items1 = ['New', "Old"];

  @override
  Widget build(BuildContext context) {
    int _selectedCategoryId = categoryMap[_selectedCategory] ?? 0;

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
            DropdownButton(
              // Initial Value
              value: _selectedValue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items1.map((String items1) {
                return DropdownMenuItem(
                  value: items1,
                  child: Text(items1),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue!;
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
            DropdownButton(
              value: _selectedCategory,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: categoryNames.map((String category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue!;
                  // Update the selected category ID
                  _selectedCategoryId = categoryMap[_selectedCategory] ?? 0;
                });
              },
            ),
            // Create a RadioListTile for option 2

            Center(
              child: ElevatedButton(
                onPressed: () {
                  int productType = _selectedValue == 'New' ? 0 : 1;
                  ProductApi().createProduct(
                      productTitle: _productTitle.text,
                      productDescription: _productDescription.text,
                      productLocation: _productLocation.text,
                      productPrice: int.tryParse(_productPrice.text) ?? 0,
                      productCategory: _selectedCategoryId,
                      productType: productType,
                      image: _image!);
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
