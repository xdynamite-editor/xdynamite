import 'package:flutter/material.dart';
import 'package:text_editor/core/files/read_file.dart';

class Editor extends StatelessWidget {
  Editor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: TextField(
        controller: TextEditingController(text: "ABC"),
        decoration: InputDecoration(border: InputBorder.none),
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
      ),
      color: Colors.black,
    );
  }
}
