import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:prome/profilepages/groups/group_policy.dart';
import 'package:prome/profilepages/groups/uitls/ss.dart';
import 'package:prome/utils/color.dart';

class GroupCategory extends StatefulWidget {
  const GroupCategory({super.key});

  @override
  State<GroupCategory> createState() => _GroupCategoryState();
}

class _GroupCategoryState extends State<GroupCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Create Group",
            style: TextStyle(color: backgroundColor),
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Text(
              'Select A Category',
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 24,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: GroupButton(
              options: ss,
              isRadio: false,
              buttons: [
                "Cars and Vehicles",
                "Comedy",
                "Economics and Trade",
                "Education",
                "Entertairment",
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
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => GroupPolicy()));
              },
              child: Text(
                "Next",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ])));
  }
}
