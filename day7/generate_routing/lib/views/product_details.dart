import 'package:flutter/material.dart';

import '../models/product_model.dart';


class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Product Name: ${product.productName}'),
            //Text('Description: ${product.description}'),
            Text('Price: \$${product.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
