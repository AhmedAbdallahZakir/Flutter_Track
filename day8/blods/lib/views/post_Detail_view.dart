import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Post Detail'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/surfing1.jpg',
          ),
        ],
      ),
    );
  }
}
