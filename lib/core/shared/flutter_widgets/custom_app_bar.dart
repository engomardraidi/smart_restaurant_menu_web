import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool drawer;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final double? leadingWidth;

  const CustomAppBar(
      {this.title,
      this.actions,
      this.drawer = true,
      this.bottom,
      this.leading,
      this.leadingWidth,
      this.automaticallyImplyLeading = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title == null || title!.isEmpty
          ? null
          : CustomText(
              text: title.toString(),
              color: Colors.white,
              fontSize: 24,
            ),
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: bottom,
      backgroundColor: AppColors.primaryColor,
      centerTitle: true,
      elevation: 0,
      titleSpacing: 0,
      actions: actions,
      leading: leading,
      leadingWidth: leadingWidth,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
