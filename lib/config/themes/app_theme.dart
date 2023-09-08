import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';
import '../../core/utils/app_colors.dart';

ThemeData appTheme() {
  AppBarTheme appBarTheme = const AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    titleTextStyle: TextStyle(
      fontFamily: AppStrings.fontFamily,
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  );

  const TextTheme textTheme = TextTheme(
    bodyMedium: TextStyle(
      height: 1.3,
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  );

  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: appBarTheme,
    textTheme: textTheme,
  );
}
