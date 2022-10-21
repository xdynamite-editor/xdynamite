import 'dart:io';

import 'package:file_picker/file_picker.dart';

String readFileFromDisk(String path) {
  String contents = File(path).readAsStringSync();
  return contents;
}

Future<String?> pickFolder() async {
  String? direcoryPath =
      await FilePicker.platform.getDirectoryPath(dialogTitle: "Open Folder");
  return direcoryPath;
}
