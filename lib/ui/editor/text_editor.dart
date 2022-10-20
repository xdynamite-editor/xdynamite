import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/core/files/read_file.dart';
import 'package:text_editor/domain/files/files_bloc.dart';
import 'package:text_editor/domain/files/files_io.dart';

class TextEditor extends StatelessWidget {
  TextEditor({Key? key}) : super(key: key);

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
              maxLines: null,
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
