import 'dart:io';

class ExtensionManager {
  final extList = [
    {
      "name": "C/C++",
      "path": "/home/bazil/Desktop/editor/exts/clang/ext_clang.exe"
    }
  ];

  void startExtensions() {
    extList.forEach((element) async {
      final p = await Process.start(element["path"] as String, []);

      p.stdin.write("Hello Guys");

      p.stdout.pipe(stdout);
    });
  }
}
