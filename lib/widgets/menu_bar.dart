import 'package:flutter/cupertino.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("File"),
        Text("Edit"),
        Text("Run"),
        Text("Help"),
      ],
    );
  }
}
