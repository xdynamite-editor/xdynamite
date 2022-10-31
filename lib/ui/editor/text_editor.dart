import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/files/files_bloc.dart';
import 'package:xdynamite/domain/files/files_io.dart';

class TextEditor extends StatefulWidget {
  TextEditor({Key? key}) : super(key: key);

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<FilesBloc, FilesState>(
        builder: (ctx, state) {
          if (state.currentFile != null) {
            return TextField(
              controller: TextEditingController(
                  text: readFileFromDisk(state.currentFile!["path"] as String)),
              decoration: InputDecoration(
                  border: InputBorder.none, contentPadding: EdgeInsets.all(5)),
              keyboardType: TextInputType.multiline,
              cursorColor: primaryAccentColor,
              maxLines: null,
              onChanged: (v) {},
              style: TextStyle(
                  color: fontClr1,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Ubuntu-Mono"),
            );
          }

          return Center(
            child: Text('No file Selected'),
          );
        },
      ),
    );
  }
}
