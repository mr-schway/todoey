import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  const AddTaskScreen({super.key, required this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            textAlign: TextAlign.center,
            'Add Task',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 25,
            ),
          ),
          TextField(
            autofocus: true,
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.indigo),
            ),
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
