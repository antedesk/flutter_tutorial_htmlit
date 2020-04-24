import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial_htmlit/screens/screen1/screen1.dart';
import 'package:flutter_tutorial_htmlit/screens/screen2/screen2.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Screen1(),
  "/screen2": (BuildContext context) => Screen2(),
};
