import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 15 - RaisedButton and SimpleDialog'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print("Button clicked"); // print in console
            },
            child: Text(
              "Click Me",
              style: TextStyle(color: Colors.teal, fontSize: 30),
            ),
          ),
          RaisedButton(
            onPressed: () {
              print("click");
            },
            color: Colors.red,
            child: Icon(Icons.add),
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked"); // print in console
            },
            onHighlightChanged: (isHigh) {
              print("onHighlightChanged.isHigh = $isHigh");
            },
            child: Text(
              "Button with onHightlightChanged",
              style: TextStyle(color: Colors.teal, fontSize: 25),
            ),
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            child: Text(
              "Button with colored text, highlight and splash",
              style: TextStyle(fontSize: 25),
            ),
            color: Colors.purple,
            textColor: Colors.white,
            highlightColor: Colors.red,
            splashColor: Colors.black26
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Disabled button",
              style: TextStyle(fontSize: 25),
            ),
            disabledColor: Colors.yellow,
            disabledTextColor: Colors.black,
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            child: Text(
              "Button with textTheme:normal",
              style: TextStyle(fontSize: 20),
            ),
            textTheme: ButtonTextTheme.normal
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            child: Text(
              "Button with textTheme:accent",
              style: TextStyle(fontSize: 20),
            ),
            textTheme: ButtonTextTheme.accent
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            child: Text(
              "Button with textTheme:primary",
              style: TextStyle(fontSize: 20),
            ),
            textTheme: ButtonTextTheme.primary
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            child: Text(
              "Button with textColor, colorBrightness",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            color: Colors.lightBlue,
            textColor: Colors.white,
            colorBrightness: Brightness.light,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Button with elevation and highlightElevation",
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.teal[700],
            textColor: Colors.white,
            elevation: 5,
            highlightElevation: 10,
            highlightColor: Colors.lightGreen,
          ),
          RaisedButton(
            onPressed: null,
            child: Text(
              "Button with disabledElevation, Text and Color",
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.red[900],
            disabledElevation: 10,
            disabledTextColor: Colors.black,
            disabledColor: Colors.yellow,
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            color: Colors.green,
            child: Text(
              "Button with padding",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            color: Colors.teal[700],
            child: Text(
              "Button with StadiumBorder",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            shape: StadiumBorder(
              side: BorderSide(color: Colors.lightGreen, width: 1),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              print("Button clicked");
            },
            color: Colors.lightGreenAccent,
            child: Text(
              "Button with rounded rectangle border",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black26, width: 4),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      )),
    );
  }
}
