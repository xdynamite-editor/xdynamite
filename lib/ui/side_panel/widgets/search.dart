import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/widgets/spacer_y.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "SEARCH",
              style: TextStyle(color: fontClr1),
            ),
            SpacerY(10),
            Text(
              "Work in Progress",
              style: TextStyle(color: fontClr1, fontSize: 12),
            )
          ],
        ));
  }
}
