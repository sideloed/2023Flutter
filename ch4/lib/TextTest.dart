import 'package:flutter/material.dart';

class Text extends StatefulWidget {
  const Text({super.key});

  @override
  State<Text> createState() => _TextState();
}

class _TextState extends State<Text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('TextTest'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Text(
            'Hello World',
            style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic
            ),

        ),

    );
  }
}
