import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) onClick;
  final Function() onLongPress;

  TaskTile({this.taskTitle = '', this.isChecked = false, required this.onClick, required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      onLongPress: onLongPress,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onClick,
      ),
    );
  }
}
