import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedScrollUpIndicator extends StatefulWidget {
  @override
  _AnimatedScrollUpIndicatorState createState() => _AnimatedScrollUpIndicatorState();
}

class _AnimatedScrollUpIndicatorState extends State<AnimatedScrollUpIndicator> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    // Start animation
    _startAnimation();
  }

  void _startAnimation() async {
    // Delay animation start
    await Future.delayed(Duration(milliseconds: 500));
    // Toggle visibility of the indicator
    setState(() {
      _isVisible = !_isVisible;
    });
    // Repeat animation after delay
    await Future.delayed(Duration(milliseconds: 500));
    // Toggle visibility again
    setState(() {
      _isVisible = !_isVisible;
    });
    // Repeat animation indefinitely
    _startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: MediaQuery.of(context).size.width / 2 - 24,
      child: AnimatedOpacity(
        opacity: _isVisible ? 0.5 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             FaIcon(
              FontAwesomeIcons.angleUp,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(width: 4),
            // Text(
            //   '',
            //   style: TextStyle(color: Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
