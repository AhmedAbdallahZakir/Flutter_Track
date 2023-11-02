import 'package:flutter/material.dart';
import 'package:todo_app/models/task_model.dart';
import 'package:todo_app/widgets/todo_item_widget.dart';

class AddToDo extends StatelessWidget {
  AddToDo({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController decribtionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('Enter the name of your task'),
          // SizedBox(
          //   height: 15,
          // ),
          Container(
            height: 50,
            width: 200,
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: 'Enter a name of task',
                  label: Text('Task'),
                  suffixIcon: Icon(Icons.task),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  )),
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          // Text('Enter the decribtion of your task'),
          // SizedBox(
          //   height: 15,
          // ),
          Container(
            height: 50,
            width: 250,
            child: TextField(
              controller: decribtionController,
              decoration: const InputDecoration(
                  hintText: 'Enter a describtion of task',
                  label: Text('Task'),
                  suffixIcon: Icon(Icons.task),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  )),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, [
                nameController.text,
                decribtionController.text,
              ]);
              Task task = Task(
                  nameTask: nameController.text,
                  decribtion: decribtionController.text);
              ToDoItem(
                nameTask: nameController.text,
                describtionTask: decribtionController.text,
              );
            },
            child: Text('Return Text'),
          ),
        ],
      ),
    );
  }
}
