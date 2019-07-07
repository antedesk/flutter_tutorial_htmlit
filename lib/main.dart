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
          // Stack alignment

          Text(
            "Stack with Alignment.centerRight",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.deepPurpleAccent,
            constraints: BoxConstraints.expand(height: 160),
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.black,
                ),
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
