import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu View'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // IconButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/menu');
              //     // Navigator.push(context,
              //     //     MaterialPageRoute(builder: (context) {
              //     //   return const Menu();
              //     // }));
              //     //Navigator.pop(context);
              //   },
              //   icon: const Icon(Icons.menu),
              // ),
              IconButton(
                onPressed: () {
                  //Navigator.pushNamed(context, '/menu');
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) {
                  //   return const Menu();
                  // }));
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.home),
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
      ),
    );
  }
}
