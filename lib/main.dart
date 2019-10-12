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
        home: MySimpleDialog(),/**/
      /*home: Scaffold(
          appBar: AppBar(
            title: Text('Lesson 22'),
          ),
          body: CustomDialogWithButton(),
        )*/
      );
  }
}

class MySimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 22'),
      ),
      body: _mySimpleDialog(),
    );
  }

  Widget _mySimpleDialog() {
    return SimpleDialog(
      title: Text("Title of the Dialog"),
      children: [Text("This is the text of the Dialog")],
    );
  }

  Widget _mySimpleDialogWithPadding() {
    return SimpleDialog(
      title: Text("Title of the Dialog"),
      titlePadding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        Text(
          "This is the text of the Dialog",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "This is a second line",
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _mySimpleDialogWithCustomShape() {
    return SimpleDialog(
      title: Text(
        "Title",
        textAlign: TextAlign.center,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      children: [
        Text(
          "This is the text of the Dialog",
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Widget _mySimpleDialogWithCustomDetails() {
    return SimpleDialog(
      title: Row(
        children: <Widget>[
          Icon(Icons.notifications),
          Text(
            "Title",
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.amber,
      elevation: 10,
      children: [
        Text(
          "This is the text of the Dialog",
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 1,
        ),
        Icon(Icons.home)
      ],
    );
  }
}

class CustomDialogWithButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: RaisedButton(
        onPressed: () {
          //customSimpleDialog(context);
          customAlertDialog(context);
        },
        child: Row(children: <Widget>[
          Icon(Icons.open_in_browser),
          Text(
            "Open Dialog",
            textAlign: TextAlign.center,
          )
        ]),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      width: 130,
    ));
  }

  void customSimpleDialog(BuildContext context) {
    var dialog = SimpleDialog(
      title: Row(
        children: <Widget>[
          Icon(Icons.notifications),
          Text(
            "Title",
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.amber,
      elevation: 10,
      children: [
        Text(
          "This is the text of the Dialog",
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 1,
        ),
        Icon(Icons.home)
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  void customAlertDialog(BuildContext context){

    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {
        print("Cancel");
      },
    );

    Widget okButton = FlatButton(
        child: Text("Ok"),
        onPressed:  () {
          print("Ok");
        },
    );

    var dialog = AlertDialog(
      title: Text("AlertDialog Title"),
      content: Text("Add a message here."),
      actions: [
        okButton,
        cancelButton,
      ],
      shape: RoundedRectangleBorder(
          side: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 10,
      backgroundColor: Colors.amber,
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}


class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 22'),
      ),
      body: _myAlertDialog(),
    );
  }

  Widget _myAlertDialog(){
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {
        print("Cancel");
      },
    );

    Widget okButton = FlatButton(
      child: Text("Ok"),
      onPressed:  () {
        print("Ok");
      },
    );

    Widget thirdButton = FlatButton(
      child: Text("The Third option"),
      onPressed:  () {
        print("The Third option");
      },
    );

    AlertDialog basicAlertDialog = AlertDialog(
      title: Text("AlertDialog Title"),
      content: Text("Add a message here."),
      actions: [
        okButton,
        cancelButton,
      ],
    );

    AlertDialog alertDialogWithMultipleButtons = AlertDialog(
      title: Text("AlertDialog Title"),
      content: Text("Add a message here."),
      actions: [
        okButton,
        cancelButton,
        thirdButton
      ],
    );

    AlertDialog customAlertDialog = AlertDialog(
      title: Text("AlertDialog Title"),
      content: Text("Add a message here."),
      actions: [
        okButton,
        cancelButton,
      ],
      shape: RoundedRectangleBorder(
          side: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 10,
      backgroundColor: Colors.amber,
    );

    return alertDialogWithMultipleButtons;
  }
}

