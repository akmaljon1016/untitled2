import 'package:flutter/cupertino.dart';
import 'package:untitled2/widgets/task_tile.dart';

import '../model/task_dart.dart';

class TaskList extends StatefulWidget {
 final List<Task> task;

  const TaskList({super.key, required this.task});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(isChecked: widget.task[index].isDone, taskTitle: widget.task[index].name,
        toggleCheckBoxState: (bool) {
        setState(() {
          widget.task[index].toggleDone();
        });
        },);
    },itemCount: widget.task.length,);
  }
}
