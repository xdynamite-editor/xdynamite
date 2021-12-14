import 'package:flutter/cupertino.dart';
import 'package:text_editor/widgets/browser.dart';
import 'package:text_editor/widgets/nav_bar.dart';

class SideBar extends StatelessWidget {
  SideBar({Key? key}) : super(key: key);

  String name = "Explorer";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [NavBar(), Browser(currentNav: name)],
    );
  }
}
