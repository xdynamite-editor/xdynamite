import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';
import 'package:text_editor/ui/widgets/spacer_x.dart';

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
              CustomIconButton(
                icon: Icons.menu,
                bgColor: clr2,
                hoverColor: clr1,
              ),
              SizedBox(
                width: 10,
              ),
              CustomIconButton(
                icon: Icons.undo,
                bgColor: clr2,
                hoverColor: clr1,
              ),
              CustomIconButton(
                icon: Icons.redo,
                bgColor: clr2,
                hoverColor: clr1,
              ),
              SpacerX(20),
              CustomIconButton(
                icon: Icons.note_add_outlined,
                bgColor: clr2,
                hoverColor: clr1,
              ),
              SpacerX(5),
              CustomIconButton(
                icon: Icons.create_new_folder_outlined,
                bgColor: clr2,
                hoverColor: clr1,
              )
            ],
          ),
          Row(
            children: [
              CustomIconButton(
                icon: Icons.play_arrow,
                bgColor: clr2,
                hoverColor: clr1,
              ),
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
