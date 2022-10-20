import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';
import 'package:text_editor/ui/editor/tab.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr3,
      child: Row(
        children: [
          SizedBox(
            width: 3,
          ),
          Tab(
            filename: "hello.tsx",
          ),
          SizedBox(
            width: 3,
          ),
          Tab(
            filename: "app.ts",
          ),
          SizedBox(
            width: 3,
          ),
          Tab(
            filename: "main.ts",
          ),
          SizedBox(
            width: 3,
          ),
          Tab(
            filename: "header.tsx",
          ),
          SizedBox(
            width: 3,
          ),
          Tab(
            filename: "footer.tsx",
          ),
        ],
      ),
    );
  }
}
