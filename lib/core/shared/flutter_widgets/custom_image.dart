import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String asset;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;

  const CustomImage(
      {required this.asset,
      this.height,
      this.width,
      this.fit,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      color: color ?? Colors.white,
      width: width == null ? null : width!,
      height: height == null ? null : height!,
      fit: fit,
    );
  }
}
