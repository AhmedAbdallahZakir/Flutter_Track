import 'package:flutter/material.dart';

import '../widgets/row_type_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Zeymur Blog'),
            SizedBox(
              width: 100,
            ),
            Icon(
              Icons.search,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowTypes(
                    iconBlog: 'assets/icons/surfing.png', nameBlog: 'Surfing'),
                RowTypes(
                    iconBlog: 'assets/icons/sailing.png', nameBlog: 'Sailing'),
                RowTypes(
                    iconBlog: 'assets/icons/basketball.png',
                    nameBlog: 'Basketball'),
                RowTypes(
                    iconBlog: 'assets/icons/tennis.png', nameBlog: 'Tennis')
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(),
            child: ListTile(
              title: Text(''),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/posts');
                    },
                    icon: const Icon(Icons.account_balance),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
