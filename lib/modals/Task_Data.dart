import 'package:flutter/material.dart';
import 'package:todoeyflutter/modals/Task.dart';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];
  int get taskCount {
    return _tasks.length;
  }
  void addToList(String newTask){
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }
  String taskName(int index){
    return _tasks[index].name;
  }
  bool taskisDone(int index){
    return _tasks[index].isDone;
  }
  void updateTask(int index){
    _tasks[index].togglecase();
    notifyListeners();
  }
  void deleteTask(int index){
    _tasks.remove(_tasks[index]);
    notifyListeners();
  }
}