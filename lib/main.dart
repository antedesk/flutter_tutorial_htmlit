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
  Widget _rowMainAxisAlignment(mainAxisAlignment) => Container(
        color: Colors.lightBlue[50],
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            Text(
              "Text1",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text2",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text3",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text4",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
        height: 30,
        margin: EdgeInsets.all(5),
      );

  Widget _columnMainAxisAlignment(mainAxisAlignment) => Container(
        color: Colors.lightBlue[50],
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          children: <Widget>[
            Text(
              "Text1",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text2",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text3",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text4",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
        height: 150,
        margin: EdgeInsets.all(5),
      );


  Widget _rowCrossAxisAlignment(crossAxisAlignment) => Container(
    color: Colors.lightGreen[50],
    child: Row(
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          "Text1",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          "Text2",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          "Text3",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          "Text4",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ],
    ),
    height: 50,
    margin: EdgeInsets.all(5),
  );

  Widget _columnCrossAxisAlignment(crossAxisAlignment) => Container(
    color: Colors.lightGreen[50],
    child: Column(
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          "Text1",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          "Text2",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          "Text3",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          "Text4",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ],
    ),
    height: 80,
    width: 200,
    margin: EdgeInsets.all(5),
  );

  Widget _rowMainAxisSize(mainAxisSize) => Container(
      color:
          mainAxisSize == MainAxisSize.min ? Colors.pink : Colors.yellowAccent,
      child: Row(
        mainAxisSize: mainAxisSize,
        children: <Widget>[
          Text(
            "Text1",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          Text(
            "Text2",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          Text(
            "Text3",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          Text(
            "Text4",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ],
      ));

  Widget _columnVerticalDirection(verticalDirection) => Container(
        color: Colors.lightBlue[50],
        child: Column(
          verticalDirection: verticalDirection,
          children: <Widget>[
            Text(
              "Text1",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text2",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text3",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Text(
              "Text4",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
        height: 150,
        margin: EdgeInsets.all(5),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 16'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          // Rows MainAxisAlignment
          Text(
            "Basic Row",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
              color: Colors.orange[100],
              child: Row(children: <Widget>[
                Text(
                  "Text1",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                Text(
                  "Text2",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )
              ])),
          SizedBox(height: 10),
          Text(
            "Basic Column",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
              color: Colors.orange[100],
              child: Column(children: <Widget>[
                Text(
                  "Text1",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                Text(
                  "Text2",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )
              ])),
          SizedBox(height: 10),

          // Rows MainAxisAlignment
          Text(
            "Row MainAxisAlignment.start",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisAlignment(MainAxisAlignment.start),
          SizedBox(height: 10),
          Text(
            "Row MainAxisAlignment.center",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisAlignment(MainAxisAlignment.center),
          SizedBox(height: 10),
          Text(
            "Row MainAxisAlignment.end",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisAlignment(MainAxisAlignment.end),
          SizedBox(height: 10),
          Text(
            "Row MainAxisAlignment.spaceBetween",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisAlignment(MainAxisAlignment.spaceBetween),
          SizedBox(height: 10),
          Text(
            "Row MainAxisAlignment.spaceEvenly",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisAlignment(MainAxisAlignment.spaceEvenly),
          SizedBox(height: 10),
          Text(
            "Row MainAxisAlignment.spaceAround",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisAlignment(MainAxisAlignment.spaceAround),

          // Column MainAxisAlignment
          Text(
            "Column MainAxisAlignment.start",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnMainAxisAlignment(MainAxisAlignment.start),
          SizedBox(height: 10),
          Text(
            "Column MainAxisAlignment.center",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnMainAxisAlignment(MainAxisAlignment.center),
          SizedBox(height: 10),
          Text(
            "Column MainAxisAlignment.end",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnMainAxisAlignment(MainAxisAlignment.end),
          SizedBox(height: 10),
          Text(
            "Column MainAxisAlignment.spaceBetween",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnMainAxisAlignment(MainAxisAlignment.spaceBetween),
          SizedBox(height: 10),
          Text(
            "Column MainAxisAlignment.spaceEvenly",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnMainAxisAlignment(MainAxisAlignment.spaceEvenly),
          SizedBox(height: 10),
          Text(
            "Column MainAxisAlignment.spaceAround",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnMainAxisAlignment(MainAxisAlignment.spaceAround),

          // Row CrossAxisAlignment
          SizedBox(height: 10),
          Text(
            "Row CrossAxisAlignment.start",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowCrossAxisAlignment(CrossAxisAlignment.start),
          SizedBox(height: 10),
          Text(
            "Row CrossAxisAlignment.center",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowCrossAxisAlignment(CrossAxisAlignment.center),
          SizedBox(height: 10),
          Text(
            "Row CrossAxisAlignment.end",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowCrossAxisAlignment(CrossAxisAlignment.end),
          // Column CrossAxisAlignment
          SizedBox(height: 10),
          Text(
            "Column CrossAxisAlignment.start",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnCrossAxisAlignment(CrossAxisAlignment.start),
          SizedBox(height: 10),
          Text(
            "Column CrossAxisAlignment.center",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnCrossAxisAlignment(CrossAxisAlignment.center),
          SizedBox(height: 10),
          Text(
            "Column CrossAxisAlignment.end",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnCrossAxisAlignment(CrossAxisAlignment.end),

          // MainAxisSize
          SizedBox(height: 10),
          Text(
            "Row MainAxisSize.min",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),

          _rowMainAxisSize(MainAxisSize.min),
          SizedBox(height: 10),
          Text(
            "Row MainAxisSize.max",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _rowMainAxisSize(MainAxisSize.max),

          // Columns CrossAxisAlignment
          SizedBox(height: 10),
          Text(
            "Column VerticalDirection.down",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnVerticalDirection(VerticalDirection.down),
          SizedBox(height: 10),
          Text(
            "Column VerticalDirection.up",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          _columnVerticalDirection(VerticalDirection.up),
        ],
      )),
    );
  }
}
