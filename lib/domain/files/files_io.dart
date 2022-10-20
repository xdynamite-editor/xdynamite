import 'dart:io';

String readFileFromDisk(String path) {
  String contents = File(path).readAsStringSync();
  return contents;
}
