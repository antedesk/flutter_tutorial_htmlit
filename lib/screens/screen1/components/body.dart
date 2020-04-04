import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_tutorial_htmlit/services/utilities.dart';

class Body extends StatefulWidget {
  final FileUtils fileUtils;

  Body({Key key, @required this.fileUtils}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("empty"));
  }
}
