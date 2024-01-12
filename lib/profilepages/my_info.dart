import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prome/apis/apis.dart';
import 'package:prome/models/user_data_model.dart';
import 'package:prome/utils/color.dart';
import 'package:prome/widgets/info_card_widget.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  UserData? userData;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  //Functions
  Future<void> _loadUserData() async {
    try {
      final storage = FlutterSecureStorage();
      // Retrieve access token and user ID from storage
      String? accessToken = await storage.read(key: 'access_token');
      String? userId = await storage.read(key: 'user_id');

      if (accessToken == null || userId == null) {
        // Handle scenario where access token or user ID is not available
        print("Access token or user ID not found.");
        throw Exception('Access token or user ID not found.');
      }

      // Call the API function to get user data
      userData = await ApiClass.getUserData(context, [
        'followers',
        'following',
        'joined_groups',
        'liked_pages',
      ]);

      setState(() {});
    } catch (error) {
      print('Error loading user data: $error');
      // Handle error as needed
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to load user data. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Information",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: userData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/newlogo.png",
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCountCard("Followers", userData!.followersCount,
                          Icons.follow_the_signs),
                      SizedBox(width: 16),
                      buildCountCard("Following", userData!.followingCount,
                          Icons.follow_the_signs_outlined),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCountCard("Joined Groups",
                          userData!.joinedGroupsCount, Icons.group),
                      SizedBox(width: 16),
                      buildCountCard("Liked Pages", userData!.likedPagesCount,
                          Icons.pages),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
