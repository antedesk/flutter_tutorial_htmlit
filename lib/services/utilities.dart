import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileUtils {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/mytext.txt');
  }

  Future<String> readTextFile() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      return "No Data";
    }
  }

  Future<File> writeTextFile(String myText) async {
    final file = await _localFile;
    return file.writeAsString('$myText');
  }
}
