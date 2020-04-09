import 'dart:async';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  // list of keys to be stored in the SharedPreferences
  static final String emailKey = "email";
  static final String notificationKey = "alert";
  static final String totalItems = "totalItems";

  static Future<SharedPreferences> getSharedPreferencesInstance() async {
    return await SharedPreferences.getInstance();
  }

  static void saveKV(String key, dynamic value) async {
    SharedPreferences sharedPreferences = await getSharedPreferencesInstance();
    if (value is bool) {
      sharedPreferences.setBool(key, value);
    } else if (value is String) {
      sharedPreferences.setString(key, value);
    } else if (value is int) {
      sharedPreferences.setInt(key, value);
    } else if (value is double) {
      sharedPreferences.setDouble(key, value);
    } else if (value is List<String>) {
      sharedPreferences.setStringList(key, value);
    }
  }

  static void resetSharedPreferences(List<String> list) async{
    SharedPreferences sharedPreferences = await getSharedPreferencesInstance();
    for(String key in list)
      sharedPreferences.remove(key);
  }
}
