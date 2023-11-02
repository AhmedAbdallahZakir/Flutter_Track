import 'package:flutter/material.dart';

import 'views/home_view.dart';

main() {
  runApp(const WhoOutApp());
}

class WhoOutApp extends StatelessWidget {
  const WhoOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
      },
    );
  }
}
