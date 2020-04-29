import 'package:flutter/material.dart';
import 'package:todos/Models/task_data.dart';
import 'package:todos/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            checkBoxCallBack: (bool checkBoxstate) {
            //   setState(() {
            //     widget.task[index].toggelDone();
            //   });
            // });
      },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
