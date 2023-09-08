import 'package:flutter/material.dart';

import 'hex_colors.dart';

class AppColors {
  static const Color backgroundColor = Colors.white;
  static final Color primaryColor = HexColor('#CFA95E');
  static final Color secondaryColor = HexColor('#EEC574');
  static final Color thirdColor = HexColor('#0C3046');
  static final Color totalPackagesColor = HexColor('#EEC574', preValue: '33');
  static final Color totalPackagesBorderColor = HexColor('#EEC574');
  static final Color readyCollectionsColor =
      HexColor('#B4843C', preValue: '33');
  static final Color readyCollectionsBorderColor = HexColor('#B4843C');
  static final Color planktonColor = HexColor('#B4843C', preValue: '33');
  static final Color planktonBorderColor = HexColor('#B4843C');
  static final Color totalPackagesValueColor =
      HexColor('#EEC574', preValue: '33');
  static final Color totalPackagesValueBorderColor = HexColor('#EEC574');
}
