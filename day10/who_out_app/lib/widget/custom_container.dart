import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String categryName;
  Icon icon;
  VoidCallback? callback;
  CustomContainer(
      {required this.categryName, required this.icon, this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 145,
        width: 145,
        decoration: BoxDecoration(
            color: Colors.green[400],
            borderRadius: BorderRadius.circular(16),
            border: Border.all()),
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
      ),
    );
  }
}
