import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget{
  late String title;
  int count = 0;

  HelloPage({super.key, required String title}){
    this.title = title;
  }

  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String messge = 'Hello World';
  //int count = 0;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              messge,
              style: TextStyle(fontSize: 50),
            ),
            Text(
              '${widget.count}',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ChangeCounter
        ),
    );
  }

void ChangeCounter(){
    widget.count++;
    setState(() {

    });
}

}