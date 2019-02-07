import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello Flutter!',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Hello Flutter!'),
        ),
        body: const Center(
          child: const Text('Hello World By HTML.it'),
        ),
      ),
    );
  }
}