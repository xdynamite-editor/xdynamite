import 'package:flutter/material.dart';
import 'package:text_editor/app/constants/colors.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: lightColor2,
        boxShadow: [
          BoxShadow(
              color: lightColor5, blurRadius: 10, blurStyle: BlurStyle.normal)
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(children: [
        AppMenuItem(title: "File"),
        AppMenuItem(title: "Edit"),
        AppMenuItem(title: "View"),
        AppMenuItem(title: "Terminal"),
      ]),
    );
  }
}

class AppMenuItem extends StatelessWidget {
  final String title;
  const AppMenuItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  color: fontClr1, fontWeight: FontWeight.w600, fontSize: 12)),
          Icon(Icons.chevron_right_outlined)
        ],
      ),
    );
  }
}
