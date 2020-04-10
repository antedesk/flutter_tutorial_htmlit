import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/screens/screen1/components/body.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Body(),
    );
  }
}