import 'package:flutter/cupertino.dart';

class Browser extends StatelessWidget {
  const Browser({Key? key, required this.currentNav}) : super(key: key);

  final String currentNav;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [Text(currentNav)],
      ),
    );
  }
}
