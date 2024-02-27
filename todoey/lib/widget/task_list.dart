import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks![index].name,
                isChecked: taskData.tasks![index].isDone,
                checkboxCallback: (bool? checkboxState) {});
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
