import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/ui/editor/line_numbers.dart';
import 'package:xdynamite/ui/editor/tabs.dart';
import 'package:xdynamite/ui/editor/text_editor.dart';

class Editor extends StatelessWidget {
  const Editor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightColor1,
      child: Column(children: [
        Tabs(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [TextEditor()],
          ),
        )
      ]),
    );
  }
}
