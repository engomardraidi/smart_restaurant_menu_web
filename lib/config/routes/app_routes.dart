import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';

class Routes {
  static const String signInRoute = '/signInRoute';
  static const String signUpRoute = '/signUpRoute';
  static const String forgetPasswordRoute = '/forgetPasswordRoute';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      default:
        return onUnknownRoute();
    }
  }

  static Route<dynamic> onUnknownRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            AppStrings.unKnownRoute,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
