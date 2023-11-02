import 'package:flutter/material.dart';
import 'package:todo_app/views/add_todo.dart';
import 'package:todo_app/views/home_view.dart';

main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/add_todo': (context) => AddToDo(),
      },
      //home: HomeView(),
    );
  }
}
