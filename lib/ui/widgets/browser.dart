import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Browser extends StatelessWidget {
  const Browser({Key? key, required this.currentNav}) : super(key: key);

  final String currentNav;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: SizedBox(
        width: 200,
        child: Column(
          children: [Text(currentNav)],
        ),
      ),
    );
  }
}
