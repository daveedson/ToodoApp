import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todos/Models/tasks.dart';

class TaskData extends ChangeNotifier{


  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Suya'),
    Task(name: 'Go to market'),
    Task(name: 'Play Video games'),
  ];



}