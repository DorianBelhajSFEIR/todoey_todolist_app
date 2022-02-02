import 'package:flutter/material.dart';
import 'package:todoey_todolist_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addNewTask(String value) {
    _tasks.add(Task(name: value));
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void changeTaskState(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
