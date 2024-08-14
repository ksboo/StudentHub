import 'package:flutter/material.dart';
import 'dart:math';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({super.key});

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  final List<Map<String, String>> threads = [
    {
      'title': 'Flutter Documentation',
      'author': 'flutter_dev',
      'comments': '120',
      'subreddit': 'r/programming',
    },
    {
      'title': 'DartPad - Online Dart Editor',
      'author': 'dart_pad',
      'comments': '89',
      'subreddit': 'r/flutterdev',
    },
    {
      'title': 'TensorFlow Official Website',
      'author': 'ai_guru',
      'comments': '58',
      'subreddit': 'r/machinelearning',
    },
    {
      'title': 'MDN Web Docs - JavaScript',
      'author': 'coder101',
      'comments': '300',
      'subreddit': 'r/learnprogramming',
    },
    {
      'title': 'VSCode Extensions Marketplace',
      'author': 'code_master',
      'comments': '75',
      'subreddit': 'r/vscode',
    },
    {
      'title': 'DartPad - Online Dart Editor',
      'author': 'dart_pad',
      'comments': '89',
      'subreddit': 'r/flutterdev',
    },
    {
      'title': 'TensorFlow Official Website',
      'author': 'ai_guru',
      'comments': '58',
      'subreddit': 'r/machinelearning',
    },
    {
      'title': 'MDN Web Docs - JavaScript',
      'author': 'coder101',
      'comments': '300',
      'subreddit': 'r/learnprogramming',
    },
    {
      'title': 'VSCode Extensions Marketplace',
      'author': 'code_master',
      'comments': '75',
      'subreddit': 'r/vscode',
    },
  ];

  final List<Color> neonColors = [
    Colors.cyanAccent,
    Colors.purpleAccent,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.orangeAccent,
    Colors.pinkAccent,
  ];

  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Resources'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: threads.length,
        itemBuilder: (context, index) {
          final thread = threads[index];
          final borderColor = neonColors[random.nextInt(neonColors.length)];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              border: Border.all(
                color: borderColor.withOpacity(0.5), // Neon border color with opacity
                width: 1, // Thin border
              ),
              borderRadius: BorderRadius.circular(8), // Optional: to round the corners of the border
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    thread['subreddit']!,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    thread['title']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Posted by ${thread['author']}',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '${thread['comments']} comments',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}