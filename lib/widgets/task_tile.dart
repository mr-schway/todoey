import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final void Function() longPressCallBack;
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.onChanged,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
