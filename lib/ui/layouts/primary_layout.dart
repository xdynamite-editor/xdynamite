import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:text_editor/ui/widgets/action_bar.dart';

class PrimaryLauout extends StatelessWidget {
  const PrimaryLauout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ActionBar()],
    );
  }
}
