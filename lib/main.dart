import 'package:flutter/material.dart';
import 'package:todos/Models/task_data.dart';
import 'package:todos/screens/TaskScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          child: MaterialApp(
        home: TaskScreen(),
      ), create: (BuildContext context) =>TaskData(),
    );
  }
}
