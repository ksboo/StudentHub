import 'package:flutter/material.dart';

class DiscussionScreen extends StatefulWidget {
  const DiscussionScreen({Key? key}) : super(key: key);

  @override
  State<DiscussionScreen> createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen> {
  final List<Map<String, String>> threads = [
    {
      'title': 'What is your favorite programming language?',
      'author': 'user123',
      'comments': '120',
      'subreddit': 'r/programming',
      'image': 'assets/images/user1.png', // Add image path for user1
    },
    {
      'title': 'The best Flutter libraries for 2023',
      'author': 'flutter_dev',
      'comments': '89',
      'subreddit': 'r/flutterdev',
      'image': 'assets/images/user2.png', // Add image path for user2
    },
    {
      'title': 'How to get started with Machine Learning?',
      'author': 'ai_guru',
      'comments': '58',
      'subreddit': 'r/machinelearning',
      'image': 'assets/images/user3.png', // Add image path for user3
    },
    {
      'title': 'JavaScript vs Python: Which one should you learn first?',
      'author': 'coder101',
      'comments': '300',
      'subreddit': 'r/learnprogramming',
      'image': 'assets/images/user4.png', // Add image path for user4
    },
    {
      'title': 'Top 10 VSCode Extensions',
      'author': 'code_master',
      'comments': '75',
      'subreddit': 'r/vscode',
      'image': 'assets/images/user5.png', // Add image path for user5
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Discussions'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: threads.length,
        itemBuilder: (context, index) {
          final thread = threads[index];
          final neonColor = neonColors[index % neonColors.length];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12, // Adjust the size of the circular image
                      backgroundImage: AssetImage(thread['image']!), // Load the user image
                    ),
                    SizedBox(width: 8),
                    Text(
                      '${thread['subreddit']} - Posted by ${thread['author']}',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  '"${thread['title']}"',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.comment,
                        color: neonColor,
                        size: 16,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '${thread['comments']} comments',
                      style: TextStyle(
                        color: neonColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: neonColor.withOpacity(0.5),
                  thickness: 1,
                  height: 24,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
