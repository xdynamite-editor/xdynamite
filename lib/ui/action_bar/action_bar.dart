import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/action_bar/widgets/command_text_input.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';
import 'package:text_editor/ui/widgets/spacer_x.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          color: lightColor3,
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
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                  ),
                  SpacerX(30),
                  CustomIconButton(
                    icon: Icons.undo,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                  ),
                  SpacerX(5),
                  CustomIconButton(
                    icon: Icons.redo,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                  ),
                  SpacerX(30),
                  CustomIconButton(
                    icon: Icons.note_add_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                  ),
                  SpacerX(5),
                  CustomIconButton(
                    icon: Icons.create_new_folder_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                  )
                ],
              ),
              Row(
                children: [
                  CustomIconButton(
                    icon: Icons.play_arrow,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          child: CommandTextInput(),
        )
      ],
    );
  }
}
