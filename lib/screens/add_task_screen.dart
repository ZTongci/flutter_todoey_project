import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey_project/screens/task_screen.dart';

import '../main.dart';
import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  Provider.of<Data>(context, listen: false).getTextTile(value);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Container(
                  color: Colors.lightBlueAccent,
                  width: 250,
                  height: 3,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<Data>(context, listen: false).Listadd();
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.lightBlueAccent,
                  width: 250,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
