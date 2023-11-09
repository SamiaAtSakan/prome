import 'package:flutter/material.dart';
import 'package:prome/screens/pages/chat_screen.dart';
import 'package:prome/screens/pages/home_page.dart';
import 'package:prome/screens/pages/live_video.dart';
import 'package:prome/screens/pages/profile_screen.dart';
import 'package:prome/screens/post/add_post.dart';
import 'package:prome/utils/color.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(), // Replace with your screen widgets
    ChatScreen(),
    LiveVideo(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: textColorTitle,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddPost()));
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: white,
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? backgroundColor : textColorTitle,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: _currentIndex == 1 ? backgroundColor : textColorTitle,
              size: 25,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            label: "Live Video",
            icon: Icon(
              Icons.live_tv,
              color: _currentIndex == 2 ? backgroundColor : textColorTitle,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.settings,
              color: _currentIndex == 3 ? backgroundColor : textColorTitle,
              size: 25,
            ),
          ),
        ],
        unselectedLabelStyle: TextStyle(color: textColorTitle.withOpacity(.8)),
        selectedLabelStyle: TextStyle(color: textColorTitle),
        backgroundColor: white, // Set your desired background color here
        selectedItemColor: textColorTitle, // Set the color for selected item
        unselectedItemColor: textColorTitle
            .withOpacity(.8), // Set the color for unselected items
      ),
    );
  }
}
