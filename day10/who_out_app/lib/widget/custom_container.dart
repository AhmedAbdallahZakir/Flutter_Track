import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String categryName;
  Icon icon;

  CustomContainer({required this.categryName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[400],
      height: 145,
      width: 145,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            categryName,
            style: TextStyle(
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
