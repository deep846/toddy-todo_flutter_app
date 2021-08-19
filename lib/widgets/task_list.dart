import 'package:flutter/material.dart';
// import 'package:toddy/models/task_data.dart';
import 'package:provider/provider.dart';
import 'package:toddy/models/task_data.dart';
import 'package:toddy/widgets/task_tile.dart';

class TaskList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context,taskdata,child)
      {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              ischecked: taskdata.taskslist![index].isdone,
              tasktile: taskdata.taskslist![index].name,
              checkboxstatus: (bool? checkboxState) {
                taskdata.updatetask(taskdata.taskslist![index]);
              },
              longpresscallback: ()
              {
                taskdata.deletetask(taskdata.taskslist![index]);
              },
            );
          },
          itemCount: taskdata.itemcount,
        );
      },
    );
  }
}
