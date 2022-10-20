import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/bottom_panel/bottom_panel.dart';
import 'package:text_editor/ui/editor/editor.dart';
import 'package:text_editor/ui/widgets/action_bar.dart';
import 'package:text_editor/ui/side_panel/side_panel.dart';

class PrimaryLauout extends StatelessWidget {
  const PrimaryLauout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionBar(),
        Expanded(
            child: Row(
          children: [SidePanel(), MainUI()],
        ))
      ],
    );
  }
}

class MainUI extends StatelessWidget {
  const MainUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Expanded(
            child: Editor(),
          ),
          // BottomPanel()
        ],
      ),
    );
  }
}
