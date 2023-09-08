import 'package:flutter/material.dart';

import '../../utils/app_strings.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final String? fontFamily;
  final double? height;
  final TextDecorationStyle? decorationStyle;
  final Color? decorationColor;

  const CustomText({
    required this.text,
    this.textStyle,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.decoration,
    this.fontFamily,
    this.height,
    this.decorationStyle,
    this.decorationColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize == null ? null : fontSize!,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color ?? Colors.black,
            decoration: decoration,
            decorationStyle: decorationStyle,
            decorationColor: decorationColor,
            fontFamily: fontFamily ?? AppStrings.fontFamily,
            height: height == null ? null : height!,
          ),
      textAlign: textAlign,
    );
  }
}
