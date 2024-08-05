import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        onChanged: (bool? checkBoxState) {
          if (checkBoxState != null) {
            setState(() {
              isChecked = checkBoxState;
            });
          }
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final void Function(bool?)? onChanged;
  final bool checkBoxState;
  const TaskCheckBox({
    super.key,
    required this.onChanged,
    required this.checkBoxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.indigo,
      onChanged: onChanged,
    );
  }
}
