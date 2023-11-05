import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class Scratch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scratcher(
        brushSize: 30,
        threshold: 50,
        color: Colors.red,
        onChange: (value) => print("Scratch progress: $value%"),
        onThreshold: () => print("Threshold reached, you won!"),
        child: Container(
          height: 50,
          width: 50,
          color: Colors.blue,
          child: const Text('text'),
        ),
      ),
    );
  }
}
