import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home View'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.book),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.production_quantity_limits),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.note_add_sharp),
              )
            ],
          )
        ],
      ),
    );
  }
}
