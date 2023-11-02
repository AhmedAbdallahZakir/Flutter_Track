import 'package:flutter/material.dart';
import 'package:xo_game/home_view.dart';

main() {
  runApp(const Game());
}

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XOGame(),
    );
  }
}
