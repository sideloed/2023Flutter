import 'package:flutter/material.dart';

class CheckboxTest extends StatefulWidget {
  const CheckboxTest({super.key});

  @override
  State<CheckboxTest> createState() => _CheckboxTestState();
}

class _CheckboxTestState extends State<CheckboxTest> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Test'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
       child: Column(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value){
              setState(() {
                 isChecked = value;
               });
            },
          ),
          SizedBox(height: 50,),
          Switch(
              value: isChecked!,
              onChanged:(value){
                setState(() {
                  isChecked = value;
                });
              }
          ),
        ],
      ),
      )


    );
  }
}
