import 'dart:io';
import 'dart:async';

import 'package:xdynamite/domain/files/fileNode.dart';

Stream<List<int>> streamFromString(String text) async* {
  yield text.codeUnits;
}

Future<List<FileNode>> getSystemFileTreeFromFolder(String path) async {
  final List<FileNode> fileNodes = [];
  final entities = Directory(path).list();

  await for (var entity in entities) {
    String filename = entity.uri.pathSegments.last;
    bool isDir = false;

    if (entity.runtimeType.toString() == "_Directory") {
      filename = entity.path.split("/").last;
      isDir = true;
    }

    final e = FileNode(filename, entity.path, isDir);
    fileNodes.add(e);
  }
  return fileNodes;
}
