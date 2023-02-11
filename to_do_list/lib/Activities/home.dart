import 'package:flutter/material.dart';

class ToDoListApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ToDoListAppState();
}

class ToDoListAppState extends State<ToDoListApp> {
  List todo = [];

  String inputToDo = "";

  @override
  void initState() {
    super.initState();
    todo.addAll(["Buy something", "Wash hands", "Kill Bill"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
          itemBuilder: (BuildContext context, int idx) {
            return Dismissible(
                key: Key(todo[idx]),
                child: Card(
                    child: ListTile(
                      title: Text(todo[idx]),
                      trailing: IconButton(icon: const Icon(Icons.delete), onPressed: (){
                        _deleteItem(idx);
                      }),
                    )
                ),
                onDismissed: (direction){
                    _deleteItem(idx);
                  }
            );
          },
          itemCount: todo.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: const Text("Add element"),
              content: TextField(
                onChanged: (String value){
                  addSomething(value);
                },
              ),
              actions: [
                ElevatedButton(onPressed: (){
                  addToTodo();
                  Navigator.of(context).pop();
                }, child: const Text("Add"))
              ],
            );
          });
        },
        child: const Icon(Icons.add),),
    );
  }

  void addSomething(String value){
    setState(() {
      inputToDo = value;
    });
  }

  void addToTodo(){
    setState(() {
      todo.add(inputToDo);
    });
  }

  void _deleteItem(int idx) {
    setState(() {
      todo.removeAt(idx);
    });
  }
}
