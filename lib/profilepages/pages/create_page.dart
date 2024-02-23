import 'package:flutter/material.dart';
import 'package:prome/apis/page_api.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/utils/message.dart';
import 'package:prome/utils/textformfield.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController page_name = TextEditingController();
  TextEditingController page_title = TextEditingController();
  TextEditingController page_category = TextEditingController();
  TextEditingController page_description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Page",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextFormInputField(
                hintText: "Page Title",
                controller: page_title,
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextFormInputField(
                controller: page_name,
                hintText: "Page Name",
                textInputType: TextInputType.name,
              ),
            ),
            Center(
              child: TextFormInputField(
                maxLines: 6,
                controller: page_description,
                hintText: "Page Description",
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: TextFormInputField(
                controller: page_category,
                hintText: "Page Category",
                textInputType: TextInputType.name,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (validateFields()) {
                    PageApi().createPageApi(
                      page_name.text,
                      page_title.text,
                      page_category.text,
                      page_description.text,
                      context,
                    );
                  }
                },
                child: Text(
                  "Create Page",
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

  bool validateFields() {
    if (page_name.text.isEmpty ||
        page_title.text.isEmpty ||
        page_description.text.isEmpty ||
        page_category.text.isEmpty) {
      messageBar("Please fill in all required fields.", context);
      return false;
    }
    return true;
  }
}
