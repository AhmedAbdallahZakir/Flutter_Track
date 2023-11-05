import 'package:flutter/material.dart';
import 'package:who_out/widget/custom_container.dart';

class SubCountry extends StatelessWidget {
  const SubCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('اختار القسم'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomContainer(
              categryName: ' دول عربية',
              icon: Icon(Icons.play_circle),
              callback: () {
                Navigator.pushNamed(context, '/add_player');
              },
            ),
            CustomContainer(
              categryName: 'دول اوروبيه',
              icon: Icon(Icons.play_circle),
              callback: () {
                Navigator.pushNamed(context, '/add_player');
              },
            ),
          ],
        ),
      ),
    );
  }
}
