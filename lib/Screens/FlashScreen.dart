import 'package:flutter/material.dart';

import '../BottomNav.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  bool _showImage = true;

  @override
  void initState() {
    super.initState();
    _startFlickerAnimation();
  }

  void _startFlickerAnimation() {
    // Flicker the image
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _showImage = false;
      });
    });
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        _showImage = true;
      });
    });
    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        _showImage = false;
      });
    });
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _showImage = true;
      });
    });
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        _showImage = false;
      });
    });
    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        _showImage = true;
      });
    });
    // Slow down the flicker
    Future.delayed(Duration(milliseconds: 2000), () {
      _slowFlickerAnimation();
    });
    // Navigate to Main_page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavCont()),
      );
    });
  }

  void _slowFlickerAnimation() {
    // Slow down the flicker
    Future.delayed(Duration(milliseconds: 3000), () {
      setState(() {
        _showImage = false;
      });
    });
    Future.delayed(Duration(milliseconds: 3500), () {
      setState(() {
        _showImage = true;
      });
    });
    Future.delayed(Duration(milliseconds: 4000), () {
      setState(() {
        _showImage = false;
      });
    });
    Future.delayed(Duration(milliseconds: 4500), () {
      setState(() {
        _showImage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image
          AnimatedOpacity(
            opacity: _showImage ? 1.0 : 0.0,
            duration: Duration(milliseconds: 50),
            child: Image.asset(
              'assets/images/dripbg.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
