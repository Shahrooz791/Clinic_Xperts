import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  VoidCallback? onTapped;
  Color? bgColor;
  Color? brdColor;
  Color? iconColor;
  Size? size;
  double? iconSize;
  IconData? icons;

  ArrowButton({
    super.key,
    this.onTapped,
    this.bgColor,
    this.brdColor,
    this.size,
    this.iconSize,
    this.icons,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: TextButton.styleFrom(
        minimumSize: size == null ? Size(45, 45) : size!,
        backgroundColor: bgColor == null ? MyColors.whiteShadeTwo : bgColor!,
        padding: EdgeInsets.zero,
        side: BorderSide(
          color: brdColor == null ? MyColors.greyShadeTwo : brdColor!,
        ),
      ),
      onPressed: onTapped,
      icon: Icon(
        (icons == null ? Icons.arrow_back : icons!) as IconData?,
        size: iconSize == null ? 24 : iconSize!,
        color: iconColor == null ? MyColors.blackShadeTwo : iconColor!,
      ),
    );
  }
}
