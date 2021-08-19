import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
 final bool ischecked ;
 final String tasktile ;
 final ValueChanged<bool?> checkboxstatus;
 final void Function() longpresscallback;
 TaskTile({required this.ischecked,required this.tasktile,required this.checkboxstatus,required this.longpresscallback});
  // void checkboxCallValue(bool newValue) {
  //   setState(() {
  //     ischecked = newValue;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text( tasktile ,style: TextStyle(
        decoration: ischecked ? TextDecoration.lineThrough : null,
      ),),
      trailing: Checkbox(value: ischecked,
    activeColor: Colors.lightBlueAccent,
    onChanged: checkboxstatus,
    ),
    );
  }
}
// (bool? checkboxState) {
// setState(() {
// ischecked = checkboxState!;
// } ); },
// class TaskCheckBox extends StatelessWidget {
//
//   final bool checkboxstate;
//   final ValueChanged<bool?> checkboxstatus;
//   TaskCheckBox ({required this.checkboxstate,required this.checkboxstatus});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(value: checkboxstate,
//       activeColor: Colors.lightBlueAccent,
//       onChanged: checkboxstatus,
//     );
//   }
// }