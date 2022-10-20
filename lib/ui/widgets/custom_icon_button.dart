import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:text_editor/app/constants/colors.dart';

class CustomIconButton extends StatefulWidget {
  IconData icon;
  Color iconColor;
  Color bgColor;
  Color hoverColor;
  double size;
  double padding;
  double borderRadius;
  CustomIconButton(
      {Key? key,
      required this.icon,
      this.iconColor = Colors.black,
      this.bgColor = clr1,
      this.hoverColor = clr2,
      this.size = 22,
      this.padding = 2,
      this.borderRadius = 5})
      : super(key: key);

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
                color: isHovered ? widget.hoverColor : widget.bgColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                padding: EdgeInsets.all(widget.padding),
                child: Icon(
                  widget.icon,
                  size: widget.size,
                  color: widget.iconColor,
                ),
              ))),
    );
  }
}
