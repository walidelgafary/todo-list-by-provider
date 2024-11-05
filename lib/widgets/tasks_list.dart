import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/models/tasks.dart';
import 'package:todo_list_provider/widgets/single_task.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, i) {
              return SingleTask(
                  task: taskData.tasks[i],
                  changeTaskState: (task) {
                    taskData.ubdateTask(task);
                  });
            });
      },
    );
  }
}
