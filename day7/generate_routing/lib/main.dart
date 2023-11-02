import 'package:flutter/material.dart';
import 'package:task2/app_routes.dart';

import 'views/home_view.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
     // onGenerateRoute:AppRouter.generateRoute(RouteSettings(arguments: )),
      home: const HomeView(),
    );
  }
}
