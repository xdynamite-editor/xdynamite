import 'package:flutter/material.dart';
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
          children: [SidePanel()],
        ))
      ],
    );
  }
}
