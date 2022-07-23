import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckBoxState;

  TaskTile({required this.isChecked, required this.taskTitle, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (bool? value) {
            toggleCheckBoxState(value);
          },
        ));
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) toggleCheckBoxState;
//
//   TaskCheckBox(
//       {required this.checkboxState, required this.toggleCheckBoxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxState,
//       activeColor: Colors.lightBlueAccent,
//       onChanged:toggleCheckBoxState,
//     );
//   }
// }
