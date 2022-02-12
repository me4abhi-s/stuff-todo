import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stufftodo/models/task_data.dart';
import 'screens/tasks_screen.dart';

void main() => runApp(const StuffToDo());

class StuffToDo extends StatelessWidget {
  const StuffToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: const MaterialApp(
        title: 'Stuff ToDo',
        home: TasksScreen(),
      ),
    );
  }
}
