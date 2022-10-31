import 'package:flutter/material.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/files/files_bloc.dart';
import 'package:provider/provider.dart';

class FileWidget extends StatefulWidget {
  String name;
  String path;
  bool isDirectory;
  bool collapsed;
  void Function() setCollapsed;
  FileWidget(
      {Key? key,
      required this.name,
      required this.path,
      required this.isDirectory,
      required this.collapsed,
      required this.setCollapsed})
      : super(key: key);

  @override
  State<FileWidget> createState() => _FileWidgetState();
}

class _FileWidgetState extends State<FileWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
          onTap: () {
            if (widget.isDirectory) {
              widget.setCollapsed();
              return;
            }

            context
                .read<FilesBloc>()
                .add(OpenFile({"name": widget.name, "path": widget.path}));
          },
          child: Container(
              decoration: BoxDecoration(
                color: isHovered ? lightColor4 : lightColor3,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(widget.isDirectory ? 6 : 23, 4, 3, 4),
                child: Row(children: [
                  (() {
                    if (widget.isDirectory)
                      return Icon(
                        widget.collapsed
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.keyboard_arrow_right_outlined,
                        size: 20,
                      );

                    return Icon(
                      Icons.insert_drive_file_outlined,
                      size: 16,
                    );
                  })(),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    widget.name,
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 13),
                  )
                ]),
              ))),
    );
  }
}
