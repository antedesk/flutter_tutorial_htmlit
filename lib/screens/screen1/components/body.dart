import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_tutorial_htmlit/services/utilities.dart';

class Body extends StatefulWidget {
  final FileUtils fileUtils;

  Body({Key key, @required this.fileUtils}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _fileContent = "";
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _readTextAndUpdateState();
  }

  /// read the text file and update the state.
  void _readTextAndUpdateState() {
    widget.fileUtils.readTextFile().then((String value) {
      setState(() {
        _fileContent = value;
      });
    });
  }

  /// update the state with the current content and write on file
  Future<File> _updateStateAndWriteText() {
    // Write the variable as a string to the file.
    return widget.fileUtils.writeTextFile(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Container(
            width: 300.0,
            child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add your text here',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                maxLines: 5,
                controller: myController),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _updateStateAndWriteText();
                },
                child: Text('Save Data'),
              ),
              RaisedButton(
                  onPressed: () {
                    _readTextAndUpdateState();
                  },
                  child: Text('Read Data'))
            ],
          ),
          Divider(),
          Text(_fileContent)
        ]));
  }
}
