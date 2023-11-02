import 'package:flutter/material.dart';
//import 'dart:io' hide File;

import 'views/home_page.dart';

main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
