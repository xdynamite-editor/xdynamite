import 'package:flutter/material.dart';

import 'package:xdynamite/app/constants/colors.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryAccentColor,
      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: const [
            Text(
              "RUN",
              style: TextStyle(
                  color: clrWhite, fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              "TypeScript",
              style: TextStyle(
                  color: clrWhite, fontSize: 12, fontWeight: FontWeight.w600),
            )
          ],
        )
      ]),
    );
  }
}
