import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stufftodo/models/task_data.dart';
import 'package:stufftodo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (bool? checkBoxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
