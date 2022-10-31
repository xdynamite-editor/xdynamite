import 'package:flutter/widgets.dart';
import 'package:xdynamite/app/constants/colors.dart';
import 'package:xdynamite/ui/controls/custom_text_button.dart';
import 'package:xdynamite/ui/widgets/spacer_y.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            CustomTextButton(
                text: "LSP", onTap: () {}, padding: EdgeInsets.all(0)),
            SpacerY(10),
            CustomTextButton(
                text: "LSP INIT", onTap: () {}, padding: EdgeInsets.all(0)),
            SpacerY(10),
            Text(
              "Work in Progress",
              style: TextStyle(color: fontClr1, fontSize: 12),
            )
          ],
        ));
  }
}
