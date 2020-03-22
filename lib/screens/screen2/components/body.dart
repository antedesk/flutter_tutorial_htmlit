import 'package:flutter/material.dart';
import 'package:flutter_tutorial_htmlit/components/my_alert_dialog.dart';
import 'package:flutter_tutorial_htmlit/models/article.dart';

class Body extends StatelessWidget {
  Article article = Article("Organizzazione del Progetto", "Antedesk");

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Article: " + article.title),
        Text("Author: " + article.author),
        CustomDialogWithButton(Text("Screen 2 AlertDialog"), Text("this is Screen2"), 10),
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to Screen1!'),
        ),
      ],
    );
  }
}
