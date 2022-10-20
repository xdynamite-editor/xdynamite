import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';

class SidePanelMenuItem extends StatelessWidget {
  IconData icon;
  SidePanelMenuItem({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: icon,
      iconColor: clrWhite,
      bgColor: lightColor6,
      hoverColor: primaryAccentColor,
      size: 30,
      padding: 5,
      borderRadius: 5,
    );
  }
}
