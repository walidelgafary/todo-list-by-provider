import 'package:flutter/material.dart';

mixin Task {
  static int countDone = 0;
  static int countDue = 0;
}

class SingleTaskData with Task {
  String? content;
  bool? isDone;

  SingleTaskData({required this.content, this.isDone = false}) {
    if (isDone!) {
      Task.countDone++;
    } else {
      Task.countDue++;
    }
  }

  void changeTaskState() {
    isDone = !isDone!;
    if (isDone!) {
      Task.countDone++;
      Task.countDue--;
    } else {
      Task.countDone--;
      Task.countDue++;
    }
  }
}

class TaskData extends ChangeNotifier with Task {
  List<SingleTaskData> tasks = [];

  int countDone = Task.countDone;
  int countDue = Task.countDue;

  void ubdateTask(SingleTaskData task) {
    task.changeTaskState();
    countDone = Task.countDone;
    countDue = Task.countDue;
    notifyListeners();
  }

  void addTask(String taskContent) {
    tasks.add(SingleTaskData(content: taskContent));
    countDue = Task.countDue;
    notifyListeners();
  }
}
