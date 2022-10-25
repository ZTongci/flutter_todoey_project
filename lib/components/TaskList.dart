import 'package:flutter/material.dart';
import 'package:flutter_todoey_project/components/TextTitle.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTitle(
                isChecks: taskData.TaskListMain[index].isDone,
                textTitle: taskData.TaskListMain[index].name,
                textBoxChanges: (bool? value) {
                  taskData.ChangCheck(taskData.TaskListMain[index]);
                },
                onLongPress: () {
                  taskData.DeleteListElements(taskData.TaskListMain[index]);
                });
          },
          itemCount: taskData.countlistmain,
        );
      },
    );
  }
}
