import 'package:flutter/material.dart';

class TextFieldText extends StatefulWidget {
  const TextFieldText({super.key});

  @override
  State<TextFieldText> createState() => _TextFieldTextState();
}

class _TextFieldTextState extends State<TextFieldText> {
  String inputText = '입력한 결과';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Text'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Text('$inputText',
          style: TextStyle(
            fontSize:40,
           ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
              labelText: '이름을 입력하세요'
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
                labelText: '나이를 입력하세요'
            ),
          ),
        ],
      ),
    );
  }
}
