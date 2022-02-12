import 'package:flutter/foundation.dart';
import 'package:stufftodo/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _tasks = [
    Task(name: 'Finish Todo List'),
    Task(name: 'Review Code'),
    Task(name: 'Upload Code To Github'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
