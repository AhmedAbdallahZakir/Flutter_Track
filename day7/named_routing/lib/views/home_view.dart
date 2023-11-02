import 'package:flutter/material.dart';
import 'package:task1/views/data_view.dart';
import 'package:task1/views/menuView.dart';
import 'package:task1/views/user_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home View'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(Icons.home),
                // ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return const Menu();
                    // }));
                  },
                  icon: const Icon(Icons.menu),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/user');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return const User();
                    // }));
                  },
                  icon: const Icon(Icons.verified_user),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/data');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return const Data();
                    // }));
                  },
                  icon: const Icon(Icons.data_array),
                ),
              ],
            ),
          ],
        ));
  }
}
