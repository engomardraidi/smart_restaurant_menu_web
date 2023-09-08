import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;
  final Color? color;
  final double? minWidth;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double? height;
  final BoxBorder? border;
  final EdgeInsetsGeometry? margin;
  final List<BoxShadow>? boxShadow;

  const CustomButton({
    this.child,
    this.onPressed,
    this.color,
    this.minWidth,
    this.padding,
    this.borderRadius,
    this.height,
    this.border,
    this.margin,
    this.boxShadow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: CustomContainer(
        margin: margin,
        onTap: onPressed,
        color: color,
        height: height,
        alignment: Alignment.center,
        minWidth: minWidth,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
        child: child,
      ),
    );
  }
}
