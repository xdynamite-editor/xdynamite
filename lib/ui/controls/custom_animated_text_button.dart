import 'package:flutter/material.dart';
import 'package:xdynamite/app/constants/colors.dart';

class CustomAnimatedTextButton extends StatefulWidget {
  final String text;
  final void Function() onTap;
  final double width;
  final Color textColor;
  final Color hoverTextColor;
  final Color bgColor;
  final Color hoverBgColor;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final double borderRadius;
  CustomAnimatedTextButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.width = 200,
      this.textColor = fontClr1,
      this.hoverTextColor = fontClr1,
      this.bgColor = lightColor3,
      this.hoverBgColor = lightColor4,
      this.fontSize = 22,
      this.fontWeight = FontWeight.normal,
      required this.padding,
      this.borderRadius = 5})
      : super(key: key);

  @override
  State<CustomAnimatedTextButton> createState() =>
      _CustomAnimatedTextButtonState();
}

class _CustomAnimatedTextButtonState extends State<CustomAnimatedTextButton> {
  bool isHovered = false;
  Color bgColor = lightColor3;
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
          onTap: widget.onTap,
          child: AnimatedContainer(
              width: widget.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isHovered ? widget.hoverBgColor : widget.bgColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              child: Padding(
                  padding: widget.padding,
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        color: isHovered
                            ? widget.hoverTextColor
                            : widget.textColor),
                  )))),
    );
  }
}
