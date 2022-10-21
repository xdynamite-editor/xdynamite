import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_selector/file_selector.dart';

void openFiles() async {
  final typeGroup = XTypeGroup(label: 'images', extensions: ['jpg', 'png']);
  final files = await openFile(acceptedTypeGroups: [typeGroup]);
}
