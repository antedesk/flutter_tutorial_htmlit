import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/components/my_alert_dialog.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/Screen2");
            },
            child: Text('Go To Screen2!'),
          ),
          CustomDialogWithButton(
              Text("Screen ! AlertDialog"), Text("this is Screen1"), 10),
        ]));
  }
}
