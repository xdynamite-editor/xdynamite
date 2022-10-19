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
      bgColor: clr3,
      hoverColor: clr2,
      size: 40,
      padding: 10,
      borderRadius: 10,
    );
  }
}