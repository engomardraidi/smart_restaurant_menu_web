import 'package:flutter/material.dart';

import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';

class SmartRestaurantMenuAWeb extends StatelessWidget {
  const SmartRestaurantMenuAWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusNode? focusNode = FocusManager.instance.primaryFocus;
        if (focusNode != null && focusNode.hasFocus) {
          focusNode.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: appTheme(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: Routes.forgetPasswordRoute,
      ),
    );
  }
}
