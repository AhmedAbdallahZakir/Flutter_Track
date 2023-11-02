import 'package:flutter/material.dart';

import '../widget/custom_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  categryName: 'حيوانات',
                  icon: const Icon(Icons.animation),
                ),
                CustomContainer(
                  categryName: 'حيوانات',
                  icon: const Icon(Icons.animation),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  categryName: 'حيوانات',
                  icon: const Icon(Icons.animation),
                ),
                CustomContainer(
                  categryName: 'حيوانات',
                  icon: const Icon(Icons.animation),
                ),
              ],
            ),
            CustomContainer(
              categryName: 'حيوانات',
              icon: const Icon(Icons.animation),
            ),
          ],
        ),
      ),
    );
  }
}
