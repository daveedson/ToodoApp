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
          final task = taskData.tasks[index];
          return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (bool checkBoxstate) {
                
                taskData.updateTask(task);
          
              
        },
        LongPressedcallBack : (){
            taskData.deleteTask(task);
        },
          );
        },
        itemCount: taskData.tasks.length,
      );
      }
          
    );
  }
}
