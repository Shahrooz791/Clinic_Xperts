import 'package:clinic_xpert/ui_helper/textstyle_and_colors/my_colors.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  String topText;
  String hintText;
  TextStyle? topTextTextStyle;
  TextStyle? hintTextStyle;
  double? height;
  Color? bgColor;
  BorderSide? focusBorder;
  BorderSide? enableBorder;
  Icon? prefixIcon;
  IconButton? suffixIcon;
  bool? obscure;

  InputBox({
    super.key,
    required this.topText,
    this.topTextTextStyle,
    this.height,
    required this.hintText,
    this.hintTextStyle,
    this.bgColor,
    this.focusBorder,
    this.enableBorder,
    this.prefixIcon,
    this.suffixIcon,
    this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          style: topTextTextStyle == null
              ? TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: 0,
                  color: MyColors.greyShadeThree,
                )
              : topTextTextStyle!,
        ),
        SizedBox(height: height == null ? 8 : height!),
        TextFormField(
          obscureText: obscure == null ? false : obscure!,
          obscuringCharacter: '*',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            suffixIcon: suffixIcon == null ? Icon(null) : suffixIcon!,
            fillColor: bgColor == null ? MyColors.whiteShadeThree : bgColor!,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: focusBorder == null ? BorderSide.none : focusBorder!,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: enableBorder == null
                  ? BorderSide.none
                  : enableBorder!,
            ),
            hintText: hintText,
            hintTextDirection: TextDirection.ltr,
            hintStyle: hintTextStyle == null
                ? TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 0,
                    color: MyColors.greyShade,
                  )
                : hintTextStyle!,
          ),
        ),
      ],
    );
  }
}
