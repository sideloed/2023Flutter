import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget{
  String title;

  HelloPage({super.key, required String title}){
    this.title = title;
  }

  State<HelloPage> createState() => HelloPageState();
}

class HelloPageState extends State<HelloPage> {
  String messge = 'Hello World';

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Text(
        messge,
        style: TextStyle(fontSize: 50),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
         setState(() {
          messge = "헬로 월드";
         });
      ),
    );
  }


}