import 'package:flutter/material.dart';

class CustomAvater extends StatefulWidget {
  String image;

  CustomAvater({required this.image});

  @override
  State<CustomAvater> createState() => _CustomAvaterState();
}

class _CustomAvaterState extends State<CustomAvater> {
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          color = Colors.red;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 3),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
