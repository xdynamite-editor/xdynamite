import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:xdynamite/app/constants/colors.dart';

class CommandTextInput extends StatelessWidget {
  const CommandTextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      height: 30,
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search, Command",
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: lightColor5, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: fontClr1, width: 2)),
            contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2)),
        cursorColor: fontClr1,
        style: TextStyle(fontSize: 12, color: fontClr1),
      ),
    );
  }
}
