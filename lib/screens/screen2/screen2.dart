import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/screens/screen2/components/body.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: Body(),
    );
  }
}
