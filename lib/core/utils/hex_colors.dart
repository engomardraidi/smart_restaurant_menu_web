import 'dart:ui';
import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor, String preValue) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "$preValue$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor, {final String preValue = 'FF'})
      : super(_getColorFromHex(hexColor, preValue));
}
