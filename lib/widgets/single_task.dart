import 'package:flutter/material.dart';
import 'package:todo_list_provider/models/tasks.dart';
import 'package:todo_list_provider/widgets/text.dart';

class SingleTask extends StatelessWidget {
  final SingleTaskData task;
  final Function changeTaskState;
  const SingleTask(
      {super.key, required this.task, required this.changeTaskState});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: textIntery(task.content!),
          titleTextStyle: TextStyle(
              decoration: task.isDone! ? TextDecoration.lineThrough : null),
          trailing: Checkbox(
              value: task.isDone,
              onChanged: (newvalue) {
                changeTaskState(task);
              }),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          height: 2,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
