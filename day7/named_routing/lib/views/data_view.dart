import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data View'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                // Navigator.pushNamed(context, '/');
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) {
                //   return const Menu();
                // }));
                Navigator.pop(context);
              },
              icon: const Icon(Icons.home),
            ),
          ]),
        ],
      ),
    );
  }
}
