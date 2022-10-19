import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/ui/side_panel/active_panel.dart';
import 'package:text_editor/ui/side_panel/side_panel_menu.dart';

class SidePanel extends StatefulWidget {
  SidePanel({Key? key}) : super(key: key);
  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  bool shrunken = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [const SidePanelMenu(), ActivePanel()],
    );
  }
}
