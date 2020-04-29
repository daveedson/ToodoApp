import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todos/Models/tasks.dart';

class TaskData extends ChangeNotifier{


  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Suya'),
    Task(name: 'Go to market'),
    Task(name: 'Play Video games'),
  ];

//getter for List<Task>
  List<Task> get tasks => _tasks;

//method to add a new task.
 void addTask(String newTaskTitle){

   final task =Task(name:newTaskTitle);
  _tasks.add(task);
  notifyListeners();
   
 }

//method to update tasks after typing in the textField.
 void updateTask(Task task){
   task.toggelDone();
   notifyListeners();
 }

//method to delete  tasks
  void deleteTask(Task task){

    _tasks.remove(task);
    notifyListeners();


  }
}