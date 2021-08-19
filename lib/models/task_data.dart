import 'package:flutter/material.dart';
import 'package:toddy/models/task.dart';
import 'dart:collection';
class Taskdata extends ChangeNotifier {
  List<Task> _task = [

  ];

  int get itemcount {
    return _task.length;
  }
  UnmodifiableListView<Task>? get taskslist {
    return UnmodifiableListView(_task);
  }
  void addtask (String newtasktitle)
  {
    final tasks = Task(name: newtasktitle);
    _task.add(tasks);
    notifyListeners();
  }
  void updatetask (Task task)
  {
    task.toggledone();
    notifyListeners();
  }
  void deletetask (Task task)
  {
    if(_task.length !=0 )
      {
        _task.remove(task);
        notifyListeners();
      }
  }
}