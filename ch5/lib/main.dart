import 'package:ch5/AlterDig.dart';
import 'package:ch5/CheckboxTest.dart';
import 'package:ch5/Datepick.dart';
import 'package:ch5/DropDown.dart';
import 'package:ch5/EventTest.dart';
import 'package:ch5/HeroTest.dart';
import 'package:ch5/RadiolistTest.dart';
import 'package:ch5/TextFieldTest.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData t =  new ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
    );
    MaterialApp m =new MaterialApp(
      title: 'Flutter Demo',
      theme: t,
      //home: CheckboxTest(),
      //home: TextFieldTest(),
      //home: RadiolistTest(),
      //home: DropDown(),
      //home: AlertDig(),
      //home: Datepick(),
      //home: EventTest(),
      home: HeroTest(),
    );

    return m;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
