import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  String nameTask;
  String describtionTask;

  ToDoItem({required this.nameTask, required this.describtionTask});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListTile(
        title: Text(nameTask),
        subtitle: Text(describtionTask),
      ),
    );
  }
}
