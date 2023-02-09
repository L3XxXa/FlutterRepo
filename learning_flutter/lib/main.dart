import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: UserPanel()));
}

class UserPanel extends StatefulWidget {
  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "L3XxXa",
                style: TextStyle(fontSize: 30),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://sun9-48.userapi.com/s/v1/if1/LdZgHQt3nzZty23xg9DOZG2vU3AGbV1Y5Uq-hkQDhlnq7JdF9Dpu16a5VthMfIRpa4BuSC-V.jpg?size=200x200&quality=96&crop=0,0,400,400&ava=1"),
                radius: 30,
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.email_outlined, size: 30,),
              Padding(padding: EdgeInsets.only(right: 10)),
              Text("pika02trololo@gmail.com", style: TextStyle(fontSize: 20),)
            ],
          ),
          Text("Count $count"),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
