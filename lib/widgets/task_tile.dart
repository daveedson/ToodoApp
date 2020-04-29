import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function LongPressedcallBack;
  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack,this.LongPressedcallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPressedcallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.indigoAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

//
