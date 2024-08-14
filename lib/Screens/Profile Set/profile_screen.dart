import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UserInformationScreen.dart';
import 'widgets/AnimatedScrollUp.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back when clicked
          },
        ),
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove app bar elevation
      ),
      extendBodyBehindAppBar: true, // Extend body behind app bar
      body: Stack(
        children: <Widget>[
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/dp1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Scroll-up Cover Screen
          GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.primaryDelta! < 0) {
                // Scroll up, reveal user information screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserInformationScreen()),
                );
              }
            },
            child: Stack(
              children: [
                Container(
                  color: Colors.black.withOpacity(0.5), // Add opacity to cover screen
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                // Animated Scroll Up Indicator
                AnimatedScrollUpIndicator(),
                // User Information
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: UserInfo(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Student Name',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          'Software Engineer',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(height: 4),
        Text(
          '+91 9998887770',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(height: 4),
        Text(
          //LET THIS BE A ONE LINE BIO ONLY.
          //LOGIC NEEDED
          'Small bio here student can put here.',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        SizedBox(height: 45,)
      ],
    );
  }
}

