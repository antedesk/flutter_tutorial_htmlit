import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        title: Text('Lesson 14 - Text Widget'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("This lesson is about the Text Widget"),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Definition of a TextStyle with basic parameters",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                background: Paint()
                  ..color = Colors.lightGreenAccent
                  ..style = PaintingStyle.fill,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "TextStyle with fontStyle",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 10,
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "TextStyle with Shadow",
                style: TextStyle(fontSize: 30, color: Colors.orange, shadows: [
                  Shadow(
                      color: Colors.black, offset: Offset(1, 4), blurRadius: 1),
                  Shadow(
                      color: Colors.yellow, offset: Offset(2, 1), blurRadius: 2)
                ]),
              )
          ),
          Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "TextStyle with fontFamily",
                style: TextStyle(
                    fontFamily: "CrimeFighter-BB",
                    fontSize: 25,
                    color: Colors.lightBlue[700]),
              )
          ),
          Container(
            constraints: BoxConstraints.expand(height: 40),
            margin: const EdgeInsets.all(5.0),
            color: Colors.black,
            child: Text(
              "TextAlign end",
              style: TextStyle(background: Paint()..color = Colors.orange),
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            color: Colors.lightGreenAccent,
            margin: const EdgeInsets.all(5.0),
            constraints: BoxConstraints.expand(height: 40, width: 230),
            child: Text(
              "Text Widget wit maxLines = 2 and this is my content content content content content",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      )),
    );
  }
}
