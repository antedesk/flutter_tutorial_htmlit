import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_tutorial_htmlit/services/utilities.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _email = "";
  bool _isNotification = false;
  int _totalItems = 0;

  final myEmailController = TextEditingController();
  final myTotalItemController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  //Loading settings in SharedPreferences
  _loadSettings() async {
    SharedPreferences sharedPrefs =
        await SharedPreferencesManager.getSharedPreferencesInstance();
    setState(() {
      myEmailController.text = (sharedPrefs.getString(SharedPreferencesManager.emailKey) ?? "");
      _isNotification = (sharedPrefs.getBool(SharedPreferencesManager.notificationKey) ??false);
      myTotalItemController.text = (sharedPrefs.getInt(SharedPreferencesManager.totalItems) ?? 0).toString();
    });
  }

  void _onTotalItemChanged(String value) {
    setState(() {
      SharedPreferencesManager.saveKV(SharedPreferencesManager.totalItems, int.parse(value));
    });
  }

  void _onEmailChanged(String value) {
    setState(() {
      SharedPreferencesManager.saveKV(SharedPreferencesManager.emailKey, value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
          decoration: InputDecoration(
            hintText: 'write your email',
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(Icons.email),
          ),
          maxLines: 1,
          maxLength: 100,
          controller: myEmailController,
          onChanged: _onEmailChanged
    ),
      Divider(),
      SwitchListTile(
        value: _isNotification,
        title: Text("Notification"),
        onChanged: (value) {
          setState(() {
            _isNotification = value;
            SharedPreferencesManager.saveKV(SharedPreferencesManager.notificationKey, value);
          });
        },
        secondary: Icon(Icons.notifications),
      ),
      Divider(),
      TextField(
          decoration: InputDecoration(
            hintText: '0',
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(Icons.list),
          ),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            WhitelistingTextInputFormatter.digitsOnly
          ],
          maxLines: 1,
          maxLength: 3,
          controller: myTotalItemController,
          onChanged: _onTotalItemChanged),
      Divider(),
      RaisedButton(
        onPressed: () {
          SharedPreferencesManager.resetSharedPreferences([
            SharedPreferencesManager.emailKey,
            SharedPreferencesManager.notificationKey,
            SharedPreferencesManager.totalItems
          ]);
          setState(() {
            _loadSettings();
          });
        },
        child: Text('Reset Settings')
      )
    ]);
  }

}
