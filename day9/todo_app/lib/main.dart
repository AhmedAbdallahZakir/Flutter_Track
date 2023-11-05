// import 'package:flutter/material.dart';
// import 'package:todo_app/views/add_todo.dart';
// import 'package:todo_app/views/home_view.dart';

// main() {
//   runApp(const ToDoApp());
// }

// class ToDoApp extends StatelessWidget {
//   const ToDoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => HomeView(
//               tasks: [],
//             ),
//         '/add_todo': (context) => AddToDo(),
//       },
//       //home: HomeView(),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'models/task_model.dart';

class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do App'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].nameTask),
            trailing: Checkbox(
              value: tasks[index].isFinished,
              onChanged: (bool? value) {
                setState(() {
                  tasks[index].isFinished = value;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add a new task
          showDialog(
            context: context,
            builder: (context) {
              String newTaskName = '';
              return AlertDialog(
                title: Text('Add Task'),
                content: TextField(
                  onChanged: (text) {
                    newTaskName = text;
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        tasks.add(
                            Task(nameTask: newTaskName, isFinished: false));
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToDoApp(),
  ));
}
