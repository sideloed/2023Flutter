import 'package:flutter/material.dart';

class Datepick extends StatefulWidget {
  const Datepick({super.key});

  @override
  State<Datepick> createState() => _DatepickState();
}

class _DatepickState extends State<Datepick> {
  get child => null;
  DateTime? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('Select Date'),
            onPressed: (){
              Future<DateTime?> selectedDate = showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2018),
                  lastDate: DateTime(2030),
                  builder: (BuildContext context, Widget? chile){
                    return Theme(
                      data: ThemeData.dark(),
                      child: child!,
                    );
                  },
              );
              selectedDate.then((dateTime) {
                setState(() {
                  selectedTime = dateTime;
                });
              }
              );
            },
          ),
          Text('$selectedTime'),
        ],
      ),
    );
  }
}
