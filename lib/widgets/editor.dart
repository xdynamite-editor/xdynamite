import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  Editor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        decoration: InputDecoration(border: InputBorder.none),
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    ]);
  }
}
