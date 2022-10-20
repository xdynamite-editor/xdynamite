import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/domain/files/files_bloc.dart';
import 'package:provider/provider.dart';

class FileWidget extends StatefulWidget {
  String name;
  String path;
  FileWidget({Key? key, required this.name, required this.path})
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
            context
                .read<FilesBloc>()
                .add(OpenFile({"name": widget.name, "path": widget.path}));
          },
          child: AnimatedContainer(
              decoration: BoxDecoration(
                color: isHovered ? lightColor5 : lightColor4,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: Container(
                    child: Row(children: [
                      Icon(Icons.chevron_right),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 13),
                      )
                    ]),
                  )))),
    );
  }
}
