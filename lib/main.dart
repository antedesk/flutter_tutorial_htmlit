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

  Widget _setFitStack(fit) => Stack(
        fit: fit,
        children: [
          Container(
            color: Colors.greenAccent,
            height: 100.0,
            width: 100.0,
          )
        ],
      );

  Widget _setOverflowStack(overflow) => Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.yellow[800],
        constraints: BoxConstraints.expand(height: 38),
        child: Stack(
          overflow: overflow,
          children: <Widget>[
            Positioned(
              top: 10,
              child: Text(
                "cogito ergo sum, cogito ergo sum, cogito ergo sum, cogito ergo sum,\ncogito ergo sum, cogito ergo sum",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            )
          ],
        ),
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
              color: Colors.grey[350],
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
            color: Colors.grey[350],
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

          // Setting elements position using Align
          Text(
            "Setting elements position using Align",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.grey[350],
            child: Stack(
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
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      color: Colors.greenAccent,
                      height: 100.0,
                      width: 100.0,
                    ))
              ],
            ),
          ),

          // Setting elements position using Positioned
          Text(
            "Setting elements position using Positioned",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.grey[350],
            child: Stack(
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
                Positioned(
                    right: 50.0,
                    top: 60.0,
                    child: Container(
                      color: Colors.greenAccent,
                      height: 100.0,
                      width: 100.0,
                    ))
              ],
            ),
          ),

          // Fit Property
          Text(
            "fit: StackFit.loose",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 160),
            child: _setFitStack(StackFit.loose),
          ),

          Text(
            "fit: StackFit.expand",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 160),
            child: _setFitStack(StackFit.expand),
          ),

          Text(
            "fit: StackFit.passthrough",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            color: Colors.black,
            child: _setFitStack(StackFit.passthrough),
          ),

          // Overflow
          Text(
            "overflow: Overflow.visible",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _setOverflowStack(Overflow.visible),
          SizedBox(height: 10),
          Text(
            "overflow: Overflow.clip",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _setOverflowStack(Overflow.clip),

          // final example
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
