import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/core/files/read_file.dart';
import 'package:text_editor/domain/files/files_io.dart';
import 'package:text_editor/domain/filesa/open_files.dart';
import 'package:text_editor/ui/controls/custom_animated_text_button.dart';
import 'package:text_editor/ui/controls/custom_text_button.dart';
import 'package:text_editor/ui/side_panel/widgets/file_widget.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';
import 'package:text_editor/ui/widgets/spacer_y.dart';

class FileBrowser extends StatefulWidget {
  const FileBrowser({Key? key}) : super(key: key);

  @override
  State<FileBrowser> createState() => _FileBrowserState();
}

class _FileBrowserState extends State<FileBrowser> {
  bool opened = false;

  List<Map<String, String>> files = [];
  @override
  Widget build(BuildContext context) {
    if (!opened) {
      return Container(
          width: 250,
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Text(
              "Open project folder to start editing. Or you can clone a git repository.",
              style: TextStyle(fontSize: 12, color: fontClr1),
            ),
            SpacerY(15),
            CustomAnimatedTextButton(
              text: "Open Folder",
              onTap: () async {
                var directoryPath = await pickFolder();

                if (directoryPath == null) {
                  return;
                }

                var contents = await readDirectory(directoryPath);
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
              textColor: lightColor1,
              hoverTextColor: lightColor1,
              bgColor: primaryAccentColorMuted,
              hoverBgColor: primaryAccentColor,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            ),
            SpacerY(15),
            CustomAnimatedTextButton(
              text: "Clone Repository",
              onTap: () {},
              textColor: lightColor1,
              hoverTextColor: lightColor1,
              bgColor: primaryAccentColorMuted,
              hoverBgColor: primaryAccentColor,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            )
          ]));
    }

    return Container(
      width: 250,
      child: Column(
        children: [
          TopBar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: files
                .map((e) => FileWidget(
                      name: e["filename"] as String,
                      path: e["path"] as String,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColor6,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "my-portfolio".toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.w900, color: fontClr1, fontSize: 12),
          ),
          // Row(
          //   children: [
          //     CustomIconButton(
          //       icon: Icons.note_add_outlined,
          //       size: 18,
          //     ),
          //     SizedBox(
          //       width: 5,
          //     ),
          //     CustomIconButton(
          //       icon: Icons.create_new_folder_outlined,
          //       size: 18,
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
