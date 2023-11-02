import 'package:flutter/material.dart';
import 'package:task2/models/product_model.dart';
import 'package:task2/views/home_view.dart';

import 'error404.dart';
import 'views/product_details.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeView());
      case '/product-details':
        return MaterialPageRoute(builder: (context) => ProductDetailsPage(product: settings.arguments as Product,));
      default:
        return MaterialPageRoute(builder: (context) =>const  Error404());
    }
  }
}
