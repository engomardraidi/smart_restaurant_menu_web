import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_colors.dart';
import 'custom_container.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final Color? focusedBorderColor;
  final bool? obscureText;
  final Color? borderColor;
  final double? borderRadius;
  final String? suffixIcon;
  final double? suffixIconWidth;
  final double? suffixIconHeight;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final TextInputType? keyboardType;
  final bool enabled;

  const CustomTextFormField({
    this.keyboardType,
    this.hintText,
    this.validator,
    this.inputFormatters,
    this.fillColor,
    this.contentPadding,
    this.controller,
    this.focusedBorderColor,
    this.obscureText,
    this.borderColor,
    this.borderRadius,
    this.suffixIcon,
    this.suffixIconWidth,
    this.suffixIconHeight,
    this.height,
    this.width,
    this.margin,
    this.enabled = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      minHeight: height,
      width: width,
      margin: margin,
      child: TextFormField(
        enabled: enabled,
        validator: validator,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        controller: controller,
        cursorColor: focusedBorderColor,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIconConstraints: const BoxConstraints(
            minHeight: 24,
            minWidth: 24,
          ),
          suffixIcon: suffixIcon == null
              ? null
              : SvgPicture.asset(
                  suffixIcon!,
                ),
          contentPadding: contentPadding,
          filled: true,
          fillColor: fillColor ?? Colors.white,
          hintText: hintText,
          errorStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          hintStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? const Color(0xFF000000),
            ),
            borderRadius:
                BorderRadius.circular(borderRadius == null ? 0 : borderRadius!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(borderRadius == null ? 0 : borderRadius!),
            borderSide: BorderSide(
              color: borderColor ?? const Color(0xFF000000),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(borderRadius == null ? 0 : borderRadius!),
            borderSide: BorderSide(
              color: focusedBorderColor ?? AppColors.secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
