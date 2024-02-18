import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class GroupDetail extends StatefulWidget {
  var name;
  var category;
  var group_id;

  var about;
  GroupDetail({
    super.key,
    required this.name,
    required this.about,
    required this.group_id,
    required this.category,
  });

  @override
  State<GroupDetail> createState() => _GroupDetailState();
}

class _GroupDetailState extends State<GroupDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              "assets/pp.png",
              width: MediaQuery.of(context).size.width,
              height: 170, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Group Name",
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.name,
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Divider(
              color: backgroundColor.withOpacity(.2),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Description",
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.about,
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Divider(
              color: textColorSubTitle.withOpacity(.2),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Category",
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.category.toString(),
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
