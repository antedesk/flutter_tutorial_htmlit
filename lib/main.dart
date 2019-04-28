import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson 11 - Container Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: null,
    );
  }
}

class ContainerExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
