import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/routes.dart';
import 'package:flutter_tutorial_htmlit/theme/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson 33',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
