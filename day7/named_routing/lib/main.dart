import 'package:flutter/material.dart';
import 'package:task1/views/menuView.dart';

import 'views/data_view.dart';
import 'views/home_view.dart';
//import 'views/third_view.dart';
import 'views/user_view.dart';

main() {
  runApp(const Routing());
}

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomeView(),
        '/menu': (context) => const Menu(),
        '/user': (context) => const User(),
        '/data': (context) => const Data()
      },
      initialRoute: '/',
      //home: HomeView(),
    );
  }
}
