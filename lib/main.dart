import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      /*home: MyFAB(),*/

      home: Scaffold(
        floatingActionButton: MyScaffoldFABwithSnackBar(),
        appBar: AppBar(title: Text('Scaffold.of Example')),
      ),
    );
  }
}

class MyScaffoldFABwithSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        SnackBar mySnackBar = SnackBar(
          content: Text('Hello!'),
          action: SnackBarAction(
              label: "CLOSE",
              textColor: Colors.white,
              onPressed: () {
                debugPrint('clicking on CLOSE');
              }),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(color: Colors.amber, width: 5.0)),
          backgroundColor: Colors.purple,
          duration: Duration(milliseconds: 2000),
        );
        Scaffold.of(context).showSnackBar(mySnackBar);
      },
      child: Icon(Icons.notifications),
    );
  }
}

class MyScaffoldFABwithFloatingSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        SnackBar mySnackBar = SnackBar(
          content: Text('Hello!'),
          action: SnackBarAction(
              label: "CLOSE",
              textColor: Colors.white,
              onPressed: () {
                debugPrint('clicking on CLOSE');
              }),
          behavior: SnackBarBehavior.floating,
          elevation: 8,
          backgroundColor: Colors.purple,
          duration: Duration(milliseconds: 2000),
        );
        Scaffold.of(context).showSnackBar(mySnackBar);
      },
      child: Icon(Icons.notifications),
    );
  }
}

class MyFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _defaultLocatedFAB();
  }

  Widget _locatedFAB() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 21'),
      ),
      body: Container(
        child: Center(
          child: Text("Default Scaffold Body"),
        ),
      ),
      floatingActionButton: _myFABcustomColor(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _defaultLocatedFAB() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lesson 21'),
        ),
        body: Container(
          child: Center(
            child: Text("Default Scaffold Body"),
          ),
        ),
        floatingActionButton: _myBasicFAB());
  }

  Widget _myBasicFAB() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        print("FAB clicked");
      },
    );
  }

  Widget _myFABextended() {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.email),
      label: Text("New e-mail"),
    );
  }

  Widget _myFABcustomColor() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.email,
      ),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.deepOrange,
    );
  }

  // Individual element colors will override the foregroundColor
  Widget _myFABColorVsFgColor() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.email,
        color: Colors.purple,
      ),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.deepOrange,
    );
  }

  Widget _myFABmini() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.email),
      mini: true,
    );
  }

  Widget _myFABcustomShape() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.email),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.amber, width: 5.0)),
    );
  }

  Widget _myFABelevation() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.email),
      elevation: 10,
    );
  }
}
