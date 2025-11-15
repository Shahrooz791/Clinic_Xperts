import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  double? height;
  double? width;
  Color? bgColor;
  TextStyle? textStyle;
  VoidCallback? onTapped;
  Color? shadowColor;
  Color? brColor;

  Button({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.bgColor,
    this.textStyle,
    this.onTapped,
    this.shadowColor,
    this.brColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == null ? 56 : height!,
      width: width == null ? double.infinity : width!,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: bgColor == null ? MyColors.blueShade : bgColor!,
          shadowColor: shadowColor == null ? Colors.black.withOpacity(0.5) : shadowColor!,
          side: BorderSide(color: brColor == null ? Colors.transparent : brColor!,width: 0.5),
        ),
        onPressed: onTapped,
        child: Text(
          text,
          style: textStyle == null
              ? TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: 0,
                  color: MyColors.whiteShadeTwo,
                )
              : textStyle!,
        ),
      ),
    );
  }
}
