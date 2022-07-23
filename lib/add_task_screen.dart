import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    final text = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Add Task",
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: text,
                autofocus: true,
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
                onChanged: (newText){
                  newTaskTitle=newText;
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () => {addTaskCallBack(newTaskTitle)}, child: Icon(Icons.add)),
            )
          ],
        ),
      ),
    );
  }
}
