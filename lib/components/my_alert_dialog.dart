import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CustomDialogWithButton extends StatelessWidget {
  final Widget title;
  final Widget content;
  final double elevation;

  CustomDialogWithButton(this.title, this.content, this.elevation);

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

  void customAlertDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        print("Cancel");
      },
    );

    Widget okButton = FlatButton(
      child: Text("Ok"),
      onPressed: () {
        print("Ok");
      },
    );

    var dialog = AlertDialog(
      title: title,
      content: content,
      actions: [
        okButton,
        cancelButton,
      ],
      shape: RoundedRectangleBorder(
          side: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10)),
      elevation: elevation,
      backgroundColor: Colors.amber,
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}
