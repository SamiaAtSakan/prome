import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:prome/apis/folllow_api.dart';
import 'package:prome/models/follow_user_model.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<dynamic> followedUsers = [];
  bool isLoading = true;

  Future<void> loadFollowedUsers() async {
    try {
      FollowApi apiService = FollowApi();
      Map<String, dynamic> response = await apiService.followUser();
      List<dynamic> users = response[
          'username']; // Assuming the response has a key 'users' containing the list of followed users

      setState(() {
        followedUsers = users;
        isLoading = false;
      });
    } catch (e) {
      print('Error loading followed users: $e');
      // Handle error accordingly
    }
  }

  @override
  void initState() {
    super.initState();
    loadFollowedUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Followed Users List'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : followedUsers.isEmpty
              ? Center(child: Text('No followed users yet.'))
              : ListView.builder(
                  itemCount: followedUsers.length,
                  itemBuilder: (context, index) {
                    // Customize how each item is displayed
                    return ListTile(
                      title: Text(
                        followedUsers[index]['username'],
                        style: TextStyle(color: background),
                      ),
                      // Add more details or customize as needed
                    );
                  },
                ),
    );
  }
}
