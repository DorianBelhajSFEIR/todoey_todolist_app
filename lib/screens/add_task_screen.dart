import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_todolist_app/models/task_data.dart';

String text = '';

class AddTaskScreen extends StatelessWidget {
  final taskTextController = TextEditingController();

  AddTaskScreen();

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Ajouter une tâche',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              TextField(
                controller: taskTextController,
                onChanged: (value) {
                  text = value;
                },
                autofocus: true,
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addNewTask(text);
                  Navigator.pop(context);
                },
                child: Text(
                  'Ajouter',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(18),
                    backgroundColor: Colors.lightBlueAccent),
              )
            ],
          ),
        ),
      );
}
