import 'dart:io';

String readFileSync() {
  String contents = File('./assets/user.json').readAsStringSync();
  return contents;
}
