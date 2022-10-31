import 'package:flutter/material.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/app/utils/files-io.dart';
import 'package:xdynamite/domain/files/fileNode.dart';
import 'package:xdynamite/domain/files/files_io.dart';
import 'package:xdynamite/domain/filesa/open_files.dart';
import 'package:xdynamite/ui/controls/custom_animated_text_button.dart';
import 'package:xdynamite/ui/controls/custom_text_button.dart';
import 'package:xdynamite/ui/side_panel/widgets/file_list.dart';
import 'package:xdynamite/ui/side_panel/widgets/file_widget.dart';
import 'package:xdynamite/ui/widgets/custom_icon_button.dart';
import 'package:xdynamite/ui/widgets/spacer_y.dart';

class FileBrowser extends StatefulWidget {
  const FileBrowser({Key? key}) : super(key: key);

  @override
  State<FileBrowser> createState() => _FileBrowserState();
}

class _FileBrowserState extends State<FileBrowser> {
  bool opened = false;

  List<FileNode> files = [];
  @override
  Widget build(BuildContext context) {
    if (!opened) {
      return Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            const Text(
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

                var fileNodes =
                    await getSystemFileTreeFromFolder(directoryPath);

                setState(() {
                  opened = true;
                  files = fileNodes;
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
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: files
          //       .map((e) => FileWidget(
          //             name: e["filename"] as String,
          //             path: e["path"] as String,
          //           ))
          //       .toList(),
          // ),
          Expanded(child: FileList(files)),
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
