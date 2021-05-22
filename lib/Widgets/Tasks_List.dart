import 'package:flutter/material.dart';
import 'Tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/modals/Task_Data.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index){
            return TaskTile(
                taskTitle: taskData.taskName(index),
                isChecked: taskData.taskisDone(index),
                checkboxCallback: (checkboxState){
                  taskData.updateTask(index);
                },
              longPressCallback: (){
                  taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}