import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  Map<String, int> categoryMap = {
    'Cars and Vehicles': 1,
    "Comedy": 2,
    'Economics and Trade': 3,
    'Education': 4,
    'Entertainment': 5,
    'Movie & Animations': 6,
    "Gaming": 7,
    'History and Facts': 8,
    'Live Style': 9,
    'Natural': 10,
    'News and Politics': 11,
    'Pets and Animals': 12,
    'People and Nations': 13,
    'Places and Regions': 14,
    'Science and Technology': 15,
    'Sport': 16,
    'Travel and Events': 17,
    'Others': 18
  };
  String _selectedCategory = "Cars and Vehicles";
  List<String> categoryNames = [
    "Cars and Vehicles",
    "Comedy",
    "Economics and Trade",
    "Education",
    "Entertainment",
    "Movie & Animations",
    "Gaming",
    "History and Facts",
    "Live Style",
    "Natural",
    "News and Politics",
    "Pets and Animals",
    "People and Nations",
    "Places and Regions",
    "Science and Technology",
    "Sport",
    "Travel and Events",
    "Others"
  ];
  @override
  Widget build(BuildContext context) {
    int _selectedCategoryId = categoryMap[_selectedCategory] ?? 0;
    TextEditingController _title = TextEditingController();
    TextEditingController _name = TextEditingController();
    TextEditingController _desc = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Group",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                width: 325.34,
                height: 70,
                child: TextField(
                  controller: _title,
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
                      labelText: "Group Title",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Title",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                width: 325.34,
                height: 70,
                child: TextField(
                  controller: _name,
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
                      labelText: "Group User Name",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "User Name",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                width: 325.34,
                height: 170,
                child: TextField(
                  controller: _desc,
                  maxLines: 6,
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
                      labelText: "Group Description",
                      labelStyle: TextStyle(color: backgroundColor),
                      hintText: "Description",
                      hintStyle: TextStyle(color: textColorTitle)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 325.34,
              child: DropdownButton(
                isExpanded: true,
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
            ),
            //
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Next",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
          ],
        ),
      ),
    );
  }
}
