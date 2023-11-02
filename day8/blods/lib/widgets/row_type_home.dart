import 'package:flutter/material.dart';

class RowTypes extends StatelessWidget {
  String nameBlog;
  String iconBlog;

  RowTypes({required this.nameBlog, required this.iconBlog});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.black,
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              iconBlog,
              height: 25,
              width: 25,
            ),
          ),
        ),
        Text(nameBlog)
      ],
    );
  }
}
