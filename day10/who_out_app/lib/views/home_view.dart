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
                  callback: () {
                    Navigator.pushNamed(context, '/add_player');
                  },
                ),
                CustomContainer(
                  categryName: 'ملابس',
                  icon: const Icon(Icons.close),
                  callback: () {
                    Navigator.pushNamed(context, '/add_player');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  categryName: 'دول',
                  icon: const Icon(Icons.flag),
                  callback: () {
                    Navigator.pushNamed(context, '/sub_country');
                  },
                ),
                CustomContainer(
                  categryName: 'مشاهير',
                  icon: const Icon(Icons.account_balance),
                  callback: () {
                    Navigator.pushNamed(context, '/sub_famous');
                  },
                ),
              ],
            ),
            CustomContainer(
              categryName: 'لاعبين',
              icon: const Icon(Icons.abc),
              callback: () {
                Navigator.pushNamed(context, '/sub_player');
              },
            ),
          ],
        ),
      ),
    );
  }
}
