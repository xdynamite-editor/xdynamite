import 'package:flutter/cupertino.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Container(
            child: Text("File"),
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text("Edit"),
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text("View"),
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text("Terminal"),
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Text("Help"),
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(5),
          ),
        ],
      ),
    );
  }
}
