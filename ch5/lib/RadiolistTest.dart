import 'package:flutter/material.dart';

class RadiolistTest extends StatefulWidget {
  const RadiolistTest({super.key});

  @override
  State<RadiolistTest> createState() => _RadiolistTestState();
}
  enum Gender{MAN, WOMAN}


class _RadiolistTestState extends State<RadiolistTest> {
  Gender? gender = Gender.MAN;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Radio Test'),
        backgroundColor: Colors.purple,
     ),
      body: Column(
        children: [
          ListTile(
            title: Text('남자'),
            leading: Radio(
              value: Gender.MAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('여자'),
            leading: Radio(
              value: Gender.WOMAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          SizedBox(height: 100,),
          RadioListTile(
              title: Text('Man'),
              value: Gender.MAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
          ),
          RadioListTile(
            title: Text('Woman'),
            value: Gender.WOMAN,
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
