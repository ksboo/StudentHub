import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import CupertinoIcons

class UserInformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Make background transparent
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make app bar transparent
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back when clicked
          },
        ),
      ),
      body: Center(
        child: Text(
          'User Information Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
