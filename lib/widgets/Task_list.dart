import 'package:flutter/material.dart';
import 'package:todos/Models/tasks.dart';
import 'package:todos/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> task;

  TaskList(this.task);
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.task[index].name,
            isChecked: widget.task[index].isDone,
            checkBoxCallBack: (bool checkBoxstate) {
              setState(() {
                widget.task[index].toggelDone();
              });
            });
      },
      itemCount: widget.task.length,
    );
  }
}
