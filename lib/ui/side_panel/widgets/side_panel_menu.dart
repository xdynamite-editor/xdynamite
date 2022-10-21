import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/side_panel/widgets/side_panel_menu_item.dart';
import 'package:text_editor/ui/widgets/spacer_y.dart';

class SidePanelMenu extends StatelessWidget {
  const SidePanelMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: lightColor6,
      child: Column(
        children: [
          SidePanelMenuItem(
            icon: Icons.file_copy_outlined,
            id: 1,
          ),
          SpacerY(5),
          SidePanelMenuItem(icon: Icons.search_outlined, id: 2),
          SpacerY(5),
          SidePanelMenuItem(icon: Icons.settings_outlined, id: 3),
        ],
      ),
    );
  }
}
