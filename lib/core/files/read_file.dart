import 'dart:io';

Future<Stream<FileSystemEntity>> readDirectory(String location) async {
  // String contents = File(location).readAsStringSync();
  var filesStream = Directory(location).list();
  return filesStream;
}
