import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFlutterSvg extends StatelessWidget {
  final String asset;
  final double? width;
  final double? height;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const CustomFlutterSvg(
      {required this.asset,
      this.width,
      this.height,
      this.onTap,
      this.padding,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: UnconstrainedBox(
          child: SvgPicture.asset(
            asset,
            width: width == null ? null : width!,
            height: height == null ? null : height!,
            colorFilter:
                ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
