import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/core/files/read_file.dart';
import 'package:text_editor/domain/filesa/open_files.dart';
import 'package:text_editor/ui/side_panel/widgets/file_widget.dart';

class FileBrowser extends StatefulWidget {
  const FileBrowser({Key? key}) : super(key: key);

  @override
  State<FileBrowser> createState() => _FileBrowserState();
}

class _FileBrowserState extends State<FileBrowser> {
  bool opened = false;
  String fileLocation = "";
  TextEditingController fileLocationController = TextEditingController();

  List<Map<String, String>> files = [];
  @override
  Widget build(BuildContext context) {
    if (!opened) {
      return Container(
          width: 200,
          color: clr3,
          padding: EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              controller: fileLocationController,
            ),
            ElevatedButton(
              child: Text("Open folder"),
              onPressed: () async {
                fileLocation = fileLocationController.value.text;
                var contents =
                    await readDirectory("/home/bazil/Desktop/my-portfolio");
                await for (final value in contents) {
                  String filename = value.uri.pathSegments.last;
                  if (value.runtimeType.toString() == "_Directory") {
                    filename = value.path.split("/").last;
                  }

                  files.add({
                    "filename": filename,
                    "path": value.path,
                    "type": value.runtimeType.toString()
                  });
                }
                setState(() {
                  opened = true;
                });
              },
            )
          ]));
    }

    return Container(
      width: 200,
      decoration: BoxDecoration(color: clr3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: files
            .map((e) => FileWidget(
                  name: e["filename"] as String,
                  path: e["path"] as String,
                ))
            .toList(),
      ),
    );
  }
}
