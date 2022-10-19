import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      color: clr2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomIconButton(icon: Icons.menu),
              SizedBox(
                width: 10,
              ),
              CustomIconButton(icon: Icons.undo),
              CustomIconButton(icon: Icons.redo)
            ],
          ),
          Row(
            children: [
              CustomIconButton(icon: Icons.play_arrow),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
