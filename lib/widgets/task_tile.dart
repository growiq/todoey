import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
