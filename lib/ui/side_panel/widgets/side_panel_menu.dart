import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/side_panel/widgets/side_panel_menu_item.dart';

class SidePanelMenu extends StatelessWidget {
  const SidePanelMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: clr4,
      child: Column(
        children: [
          SidePanelMenuItem(icon: Icons.file_copy_outlined),
          SidePanelMenuItem(icon: Icons.search_outlined),
          SidePanelMenuItem(icon: Icons.settings_outlined),
        ],
      ),
    );
  }
}
