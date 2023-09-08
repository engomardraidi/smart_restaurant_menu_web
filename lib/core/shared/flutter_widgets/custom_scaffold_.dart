import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool showBottomNavigationBar;
  final Color? backgroundColor;
  final bool isDriver;
  final Function? function;
  final List<Map<String, dynamic>>? bottomNavigatorItems;

  const CustomScaffold({
    this.function,
    this.body,
    this.appBar,
    this.showBottomNavigationBar = true,
    this.backgroundColor,
    this.isDriver = false,
    this.bottomNavigatorItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor ?? AppColors.backgroundColor,
      body: body == null
          ? null
          : SafeArea(
              child: body!,
            ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: showBottomNavigationBar ? const SizedBox() : null,
    );
  }
}
