import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
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
