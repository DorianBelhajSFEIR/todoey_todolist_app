import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_todolist_app/models/task.dart';
import 'package:todoey_todolist_app/models/task_data.dart';
import 'package:todoey_todolist_app/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<TaskData>(
        builder: (context, taskData, child) => ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                onLongPress: () => taskData.removeTask(task),
                onClick: (bool? value) => taskData.changeTaskState(index));
          },
          itemCount: taskData.taskCount,
        ),
      );
}
