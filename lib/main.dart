import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/theme/style.dart';
import 'package:flutter_tutorial_htmlit/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson 32',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
