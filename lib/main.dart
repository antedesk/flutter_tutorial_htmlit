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
  Widget _buildStack(pic, name) => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(pic),
            radius: 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 17'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          // Stack basic example
          Text(
            "Simple Stack",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),

          Container(
              margin: EdgeInsets.only(top: 10),
              child: Stack(
                children: <Widget>[
                  // Max Size
                  Container(
                    color: Colors.orange,
                    height: 300,
                    width: 300,
                  ),
                  Container(
                    color: Colors.yellowAccent,
                    height: 200.0,
                    width: 200.0,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: 100.0,
                    width: 100.0,
                  )
                ],
              )),

          // Stack alignment
          Text(
            "Stack with Alignment.centerRight",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Container(
                  color: Colors.orange,
                  height: 300,
                  width: 300,
                ),
                Container(
                  color: Colors.yellowAccent,
                  height: 200.0,
                  width: 200.0,
                ),
                Container(
                  color: Colors.greenAccent,
                  height: 100.0,
                  width: 100.0,
                )
              ],
            ),
          ),

          SizedBox(height: 10),
          Text(
            "Example of Stack for displaying user pic",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Center(
            child: _buildStack('girl.jpg', 'Shawna'),
          )
        ],
      )),
    );
  }
}
