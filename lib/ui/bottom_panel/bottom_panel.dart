import 'package:flutter/material.dart';
import 'package:xdynamite/app/constants/colors.dart';

class BottomPanel extends StatelessWidget {
  const BottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: clr1, border: Border(top: BorderSide(color: clr6, width: 2))),
    );
  }
}
