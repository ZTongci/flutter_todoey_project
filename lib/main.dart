import 'package:flutter/material.dart';
import 'package:flutter_todoey_project/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/task.dart';
import 'dart:collection';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  List<task> _TaskListMain = [task(name: 'go for milk')];
  late String newTextTitle;

  void getTextTile(SomeTitle) {
    newTextTitle = SomeTitle;
    notifyListeners();
  }

  int get countlistmain {
    return _TaskListMain.length;
  }

  List<task> get TaskListMain {
    return _TaskListMain;
  }

  void Listadd() {
    _TaskListMain.add(task(name: newTextTitle));
    notifyListeners();
  }

  void ChangCheck(task Task) {
    Task.toggleDone();
    notifyListeners();
  }

  void DeleteListElements(task Task) {
    _TaskListMain.remove(Task);
    notifyListeners();
  }
}
