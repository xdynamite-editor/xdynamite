import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({Key? key}) : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isHovered = false;
  Color bgColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
          onTap: () {},
          child: AnimatedContainer(
              decoration: BoxDecoration(
                color: isHovered ? Colors.red : Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Icon(
                  Icons.menu,
                  size: 22,
                ),
              ))),
    );
  }
}
