import 'package:flutter/material.dart';

import 'home_view.dart';

main() {
  runApp(const Synic());
}

class Synic extends StatelessWidget {
  const Synic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
    );
  }
}
