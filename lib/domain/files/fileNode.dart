import 'package:xdynamite/app/utils/files-io.dart';

class FileNode {
  final String name;
  final String path;
  final bool isDirectory;
  late List<FileNode> children = [];

  FileNode(this.name, this.path, this.isDirectory) {
    getChildren();
  }

  void getChildren() async {
    if (isDirectory) {
      children = await getSystemFileTreeFromFolder(path);
    }
  }
}
