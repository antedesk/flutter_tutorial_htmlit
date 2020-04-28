import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/repositories/dbhelper.dart';
import 'package:flutter_tutorial_htmlit/routes.dart';
import 'package:flutter_tutorial_htmlit/theme/style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //forse non serve per l'esempio
  await DBHelper().initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson 35',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
