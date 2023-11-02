import 'package:flutter/material.dart';

class TextFieldText extends StatefulWidget {
  const TextFieldText({super.key});

  @override
  State<TextFieldText> createState() => _TextFieldTextState();
}

class _TextFieldTextState extends State<TextFieldText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Text'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Text('Input contents',
          style: TextStyle(
            fontSize:40,
           ),
          ),
          TextField(
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '이름을 입력하세요'
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: '나이를 입력하세요'
            ),
          ),
        ],
      ),
    );
  }
}
