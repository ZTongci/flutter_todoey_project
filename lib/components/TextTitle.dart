import 'package:flutter/material.dart';


class TaskTitle extends StatelessWidget {
  TaskTitle({required this.isChecks, required this.textTitle, required this.textBoxChanges, required this.onLongPress});
  final  isChecks;
  final Function(bool?) textBoxChanges;
  final String textTitle;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(textTitle,style: TextStyle(decoration:isChecks ?TextDecoration.lineThrough:null),), trailing: Checkbox(onChanged:
    textBoxChanges,
      value: isChecks,),);
  }


}
