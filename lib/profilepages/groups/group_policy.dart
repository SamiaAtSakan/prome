import 'package:flutter/material.dart';
import 'package:prome/profilepages/groups/explorer_groups.dart';
import 'package:prome/utils/color.dart';

enum SingingCharacter { Public, Private }

class GroupPolicy extends StatefulWidget {
  const GroupPolicy({super.key});

  @override
  State<GroupPolicy> createState() => _GroupPolicyState();
}

class _GroupPolicyState extends State<GroupPolicy> {
  @override
  Widget build(BuildContext context) {
    SingingCharacter? _character = SingingCharacter.Public;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create Group",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Text(
              'Select Privacy',
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 20,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Public'),
            value: SingingCharacter.Public,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Private'),
            value: SingingCharacter.Private,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          Flexible(child: Container()),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ExplorerGroups()));
              },
              child: Text(
                "Finish",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
