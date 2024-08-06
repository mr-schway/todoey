import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/screens/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(top: 60, bottom: 30, right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 40,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const TasksList(),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox.fromSize(
        size: const Size.square(65),
        child: FloatingActionButton(
          backgroundColor: Colors.indigo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
