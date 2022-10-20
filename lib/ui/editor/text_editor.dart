import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/core/files/read_file.dart';

class TextEditor extends StatelessWidget {
  TextEditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: TextField(
          controller: TextEditingController(text: "ABC"),
          decoration: InputDecoration(border: InputBorder.none),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          style: TextStyle(color: fontClr1, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
