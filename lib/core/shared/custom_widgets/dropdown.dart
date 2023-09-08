import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../flutter_widgets/custom_text.dart';
import '../../utils/app_colors.dart';

class Dropdown extends StatelessWidget {
  final String? value;
  final TextEditingController? controller;
  final String hint;
  final double? hintFontSize;
  final String? Function(String?)? validator;
  final List items;
  final Color? color;
  final void Function(String?)? onChanged;
  final bool enable;

  const Dropdown(
      {required this.hint,
      required this.items,
      this.hintFontSize,
      this.color,
      this.validator,
      this.value,
      this.controller,
      this.onChanged,
      this.enable = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      value: value,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: enable
            ? OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(20),
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      hint: CustomText(
        text: hint,
        fontSize: hintFontSize ?? 20,
        color: color ?? Colors.black45,
      ),
      items: items.map((item) {
        return DropdownMenuItem<String>(
          value: item.id.toString(),
          child: Text(
            item.name,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        );
      }).toList(),
      validator: validator,
      onChanged: enable
          ? onChanged ??
              (value) {
                if (value != null) {
                  controller!.text = value;
                }
              }
          : null,
      onSaved: (value) {},
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: AppColors.primaryColor,
        ),
        iconSize: 24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
