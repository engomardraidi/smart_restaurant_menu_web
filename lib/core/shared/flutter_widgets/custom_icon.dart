import 'package:flutter/material.dart';
import 'custom_container.dart';

class CustomButtonIcon extends StatelessWidget {
  final void Function()? onPressed;
  final double? height;
  final double? width;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final double? iconSize;

  const CustomButtonIcon(
      {required this.onPressed,
      required this.icon,
      this.backgroundColor,
      this.height,
      this.width,
      this.iconSize,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomContainer(
        height: height,
        width: width,
        borderRadius: 100,
        color: backgroundColor,
        child: Icon(
          icon,
          size: iconSize,
          color: color,
        ),
      ),
    );
  }
}
