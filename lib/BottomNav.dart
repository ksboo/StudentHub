import 'package:flutter/material.dart';

import 'Screens/Discussion Screen/discussion_screen.dart';
import 'Screens/Posts Screen/posts_screen.dart';
import 'Screens/Profile Set/profile_screen.dart';
import 'Screens/Resource Screen/resource_screen.dart';

class BottomNavCont extends StatefulWidget {
  const BottomNavCont({super.key});

  @override
  State<BottomNavCont> createState() => _BottomNavContState();
}

class _BottomNavContState extends State<BottomNavCont> {
  List pages = [
    DiscussionScreen(),
    ResourceScreen(),
    PostsScreen(),
  ];

  int current_index = 0;

  void onTap(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          pages[current_index],
          Positioned(
            right: 16, // Shift the floating action button to the right edge
            bottom: 35, // Position the button closer to the bottom navigation bar
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              backgroundColor: Colors.black, // Set button background color
              child: Container(
                width: 60, // Increased width to match the CircleAvatar radius
                height: 60, // Increased height to match the CircleAvatar radius
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.pinkAccent, // Neon border color
                    width: 2, // Thin border
                  ),
                ),
                child: CircleAvatar(
                  radius: 30, // Radius of the floating button
                  backgroundImage: AssetImage('assets/images/dp1.jpeg'), // Display the specified image
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.greenAccent, // Neon border color
                width: 1, // Very thin border
              ),
            ),
          ),
          child: SizedBox(
            height: 70, // Increased height of bottom navigation bar
            child: BottomNavigationBar(
              selectedFontSize: 12,
              unselectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black, // Set background color to black

              onTap: onTap,
              currentIndex: current_index,

              selectedItemColor: Colors.cyanAccent, // Neon color for selected item
              unselectedItemColor: Colors.purpleAccent.withOpacity(0.5), // Neon color for unselected items
              showSelectedLabels: true, // Set to true to show labels
              showUnselectedLabels: true, // Set to true to show labels
              elevation: 0,

              items: [
                BottomNavigationBarItem(
                  label: "Discussion",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "Resources",
                  icon: Icon(Icons.account_circle),
                ),
                BottomNavigationBarItem(
                  label: "Posts",
                  icon: Icon(Icons.account_circle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
