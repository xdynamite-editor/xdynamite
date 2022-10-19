import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';

class CustomIconButton extends StatefulWidget {
  IconData icon;
  CustomIconButton({Key? key, required this.icon}) : super(key: key);

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
                color: isHovered ? clr1 : clr2,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  widget.icon,
                  size: 22,
                ),
              ))),
    );
  }
}
