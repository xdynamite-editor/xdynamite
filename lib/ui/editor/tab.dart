import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/widgets/custom_icon_button.dart';
import 'package:text_editor/ui/widgets/spacer_x.dart';

class Tab extends StatelessWidget {
  String filename;
  Tab({Key? key, required this.filename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: lightColor1,
      child: Row(
        children: [
          Text(
            filename,
            style: TextStyle(fontSize: 12),
          ),
          SpacerX(5),
          CustomIconButton(
            icon: Icons.close,
            bgColor: lightColor1,
            hoverColor: lightColor2,
            size: 15,
          )
        ],
      ),
    );
  }
}
