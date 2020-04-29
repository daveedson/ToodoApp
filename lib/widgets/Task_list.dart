import 'package:flutter/material.dart';
import 'package:todos/Models/task_data.dart';
import 'package:todos/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallBack: (bool checkBoxstate) {
                
                taskData.updateTask(taskData.tasks[index]);
          
              
        },
          );
        },
        itemCount: taskData.tasks.length,
      );
      }
          
    );
  }
}
