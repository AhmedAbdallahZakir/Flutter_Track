import 'package:flutter/material.dart';

import '../models/product_model.dart';

import 'product_details.dart';

class ShopView extends StatelessWidget {
  final List<Product> products = [
    Product(productName: 'Product 1', price: 19.99),
    Product(productName: 'Product 2', price: 29.99),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.productName),
            subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(product: product),
                  ),
                );
              },
              child: Text('More Details'),
            ),
          );
        },
      ),
    );
  }
}
