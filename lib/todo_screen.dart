import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/models/tasks.dart';
import 'package:todo_list_provider/widgets/add_task.dart';
import 'package:todo_list_provider/widgets/task_info.dart';
import 'package:todo_list_provider/widgets/tasks_list.dart';
import 'package:todo_list_provider/widgets/todo_appbar.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return AddTask();
                  },
              );
            }),
        backgroundColor: Colors.blueAccent,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              TodoAppBar(),
              SizedBox(
                height: 70,
              ),
              TaskInfo(done: Provider.of<TaskData>(context).countDone,
                      due: Provider.of<TaskData>(context).countDue,),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:TasksList()                  
                    ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
