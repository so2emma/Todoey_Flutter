import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy mIlk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];

  UnmodifiableListView<Task>? get tasks {
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
}
