//import 'package:counter/widget/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_item_widget.dart';
import 'add_todo.dart';
import '../models/task_model.dart';

class HomeView extends StatelessWidget {
  List<Task> tasks = [];

  // String name = '';
  // String decribtion = '';

  TextEditingController nameController = TextEditingController();

  TextEditingController describtionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ToDo App'),
        ),
        floatingActionButton: IconButton(
          onPressed: () async {
            List<String> result =
                await Navigator.pushNamed(context, '/add_todo') as List<String>;

            if (result != null) {
              tasks.add(Task(nameTask: result[0], decribtion: result[1]));
              print(result);
              print(tasks);
            }
          },
          icon: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(Icons.add),
          ),
        ),
        //backgroundColor: const Color(0xff2B475E),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return ToDoItem(
              nameTask: tasks[index].nameTask,
              describtionTask: tasks[index].decribtion,
            );
            //
          },
        ));
  }
}
