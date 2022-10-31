import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/domain/action_bar/action_bar_bloc.dart';
import 'package:xdynamite/ui/action_bar/widgets/command_text_input.dart';
import 'package:xdynamite/ui/widgets/custom_icon_button.dart';
import 'package:xdynamite/ui/widgets/spacer_x.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({Key? key}) : super(key: key);

  void Function() _onMenuIconTap(BuildContext ctx, bool isAppMenuOpen) {
    return () {
      ctx.read<ActionBarBloc>().add(SetAppMenu(!isAppMenuOpen));
    };
  }

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
                  SpacerX(8),
                  BlocBuilder<ActionBarBloc, ActionBarState>(
                    builder: (ctx, state) {
                      return CustomIconButton(
                        icon: Icons.menu,
                        onTap: _onMenuIconTap(context, state.isAppMenuOpen),
                        isActive: state.isAppMenuOpen,
                        bgColor: lightColor4,
                        hoverColor: lightColor6,
                        enableBorder: true,
                        size: 18,
                      );
                    },
                  ),
                  SpacerX(10),
                  Container(
                    width: 2,
                    height: 30,
                    color: lightColor4,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.undo,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.redo,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.cut_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.copy_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.paste_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10),
                  Container(
                    width: 2,
                    height: 30,
                    color: lightColor4,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.note_add_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10),
                  CustomIconButton(
                    icon: Icons.create_new_folder_outlined,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomIconButton(
                    icon: Icons.play_arrow,
                    bgColor: lightColor4,
                    hoverColor: lightColor6,
                    enableBorder: true,
                    size: 18,
                  ),
                  SpacerX(10)
                ],
              )
            ],
          ),
        ),
        Positioned(
          child: CommandTextInput(),
        ),
      ],
    );
  }
}
