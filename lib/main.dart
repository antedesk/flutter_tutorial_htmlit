import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lesson 11 - Container Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ContainerExample());
  }
}

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lesson 11 - Container Widget'),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.orange,
              child: Text("Basic Container"),
            ),
            Container(
              width: 300.0,
              height: 50.0,
              color: Colors.teal,
              child: Text("Container width = 300 , height = 50"),
            ),
            Container(
              color: Colors.yellow,
              margin:
              EdgeInsets.only(left: 10.0, right: 50.0, top: 10, bottom: 30),
              padding:
              EdgeInsets.only(left: 25.0, right: 25.0, top: 10, bottom: 10),
              child: Container(
                color: Colors.orangeAccent[200],
                child: Text("Container with margin and padding"),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              alignment: Alignment.bottomRight,
              height: 200,
              child: Text("Container with child alignment"),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 100.0, width: 200),
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  color: Colors.red),
              child: Text("Container with ShapeDecoration"),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              constraints: BoxConstraints.expand(width: 200, height: 150),
              color: Colors.lightGreenAccent[700],
              transform: Matrix4.rotationY(pi / 5)..rotateX(pi / 5),
              child: Text("this.transform"),
            )
          ]
        )));
  }
}
