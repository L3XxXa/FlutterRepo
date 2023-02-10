import 'package:flutter/material.dart';

class ToDoListApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ToDoListAppState();
}

class ToDoListAppState extends State<ToDoListApp> {
  List todo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (BuildContext context, int idx) {
            return Dismissible(key: Key(todo[idx]), child: Card());
          },
          itemCount: todo.length),
    );
  }
}
