import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddy/models/task_data.dart';
class Addtask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? tasktext;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Title',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newtext)
                {
                  tasktext = newtext;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent)),
                onPressed: ()
                {
                  if(tasktext != null) {
                    // print(tasktext);
                     Provider.of<Taskdata>(context, listen: false).addtask(tasktext!);
                    tasktext = null;
                     Navigator.pop(context);
                  }
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white,fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
      ),
    );
  }
}
