import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final double? borderRadius;
  final double topLeft;
  final double topRight;
  final double bottomRight;
  final double bottomLeft;
  final BoxBorder? border;
  final Color? color;
  final Color? hoveColor;
  final AlignmentGeometry? alignment;
  final ImageProvider<Object>? backgroundImage;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final BoxShape? shape;
  final void Function()? onTap;
  final double? minWidth;
  final double? maxWidth;
  final double? minHeight;
  final double? maxHeight;
  final Decoration? decoration;

  const CustomContainer({
    this.decoration,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.borderRadius,
    this.border,
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    this.color,
    this.hoveColor,
    this.alignment,
    this.backgroundImage,
    this.gradient,
    this.onTap,
    this.boxShadow,
    this.shape,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height == null ? null : height!,
        width: width == null ? null : width!,
        margin: margin,
        padding: padding,
        constraints: BoxConstraints(
          minWidth: minWidth == null ? 0.0 : minWidth!,
          maxWidth: maxWidth == null ? double.infinity : maxWidth!,
          minHeight: minHeight == null ? 0.0 : minHeight!,
          maxHeight: maxHeight == null ? double.infinity : maxHeight!,
        ),
        decoration: decoration ??
            BoxDecoration(
              image: backgroundImage != null
                  ? DecorationImage(
                      // fit: BoxFit.fill,
                      image: backgroundImage ?? const AssetImage(''),
                      onError: (exception, stackTrace) => const Center(
                        child: Icon(Icons.broken_image),
                      ),
                    )
                  : null,
              gradient: gradient,
              border: border,
              borderRadius: borderRadius == null &&
                      topLeft == 0 &&
                      topLeft == 0 &&
                      bottomLeft == 0 &&
                      bottomRight == 0
                  ? null
                  : BorderRadius.only(
                      topLeft: Radius.circular(borderRadius ?? topLeft),
                      topRight: Radius.circular(borderRadius ?? topRight),
                      bottomLeft: Radius.circular(borderRadius ?? bottomLeft),
                      bottomRight: Radius.circular(borderRadius ?? bottomRight),
                    ),
              color: color,
              boxShadow: boxShadow,
              shape: shape ?? BoxShape.rectangle,
            ),
        alignment: alignment,
        child: child,
      ),
    );
  }
}
