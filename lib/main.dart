import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Counter());
  }
}

class OrangeContainer extends StatelessWidget {
  const OrangeContainer({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.text),
        ),
        body: Center(
            child: Container(
              color: const Color(0xFFFF7F50),
              constraints: BoxConstraints(
                  maxHeight: 300.0,
                  maxWidth: 200.0,
                  minWidth: 150.0,
                  minHeight: 150.0),
            )
        )
    );
  }
}

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
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
        title: Text('StatefulWidget'),
      ),
      body: Center(
          child: Text(
            '$_counter',
            style: TextStyle(fontSize: 30),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
