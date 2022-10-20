import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';

class Tab extends StatelessWidget {
  String filename;
  Tab({Key? key, required this.filename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: clr5, borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Row(
        children: [
          Text(
            filename,
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(
            width: 5,
          ),
          CustomIconButton(
            icon: Icons.close,
            size: 15,
          )
        ],
      ),
    );
  }
}
