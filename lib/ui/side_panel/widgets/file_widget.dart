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
                color: isHovered ? clr2 : clr3,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Container(
                    child: Row(children: [
                      Icon(Icons.arrow_right),
                      SizedBox(
                        width: 10,
                      ),
                      Text(widget.name)
                    ]),
                  )))),
    );
  }
}
