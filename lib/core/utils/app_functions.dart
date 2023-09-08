import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_restaurant_menu_web/core/utils/extensions.dart';
import 'package:string_validator/string_validator.dart';

import '../apis/end_points.dart';
import '../apis/status_code.dart';
import '../errors/failure/cache_failure.dart';
import '../errors/failure/connection_failure.dart';
import '../errors/failure/failure.dart';
import '../errors/failure/request_failure.dart';
import '../errors/failure/server_failure.dart';
import '../shared/flutter_widgets/custom_text.dart';
import 'app_enums.dart';
import 'app_strings.dart';

class AppFunctions {
  static String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailure;

      case CacheFailure:
        return AppStrings.cacheFailure;

      case ConnectionFailure:
        return AppStrings.connectionFailure;

      default:
        return AppStrings.unexpectedError;
    }
  }

  static String convertToImgaeUrl(String path) {
    return '${EndPoints.baseUrl}$path';
  }

  static String extractImageExtension(String imageUrl) {
    List<String> parts = imageUrl.split('/');
    String imageName = parts.last;
    List<String> nameParts = imageName.split('.');
    if (nameParts.length > 1) {
      return nameParts.last;
    } else {
      return '';
    }
  }

  static bool checkForm(GlobalKey<FormState> formKey) {
    return formKey.currentState!.validate();
  }

  static String? formValidation(String? text, TextFormType type,
      [int? min, int? max]) {
    if (text == null || text.isEmpty) {
      return AppStrings.requiredField.capitalize();
    } else {
      if (type == TextFormType.username) {
        var reg = RegExp(r"^(?:\p{L}\p{Mn}*|)+$", unicode: true);
        text = text.replaceAll(' ', '');
        if (!reg.hasMatch(text)) {
          return AppStrings.notValidName.capitalize();
        }
      } else if (type == TextFormType.email) {
        if (!isEmail(text)) {
          return AppStrings.notValidEmail.capitalize();
        }
      } else if (type == TextFormType.number) {
        if (!isNumeric(text)) {
          return AppStrings.notValidNumber.capitalize();
        }
      } else if (type == TextFormType.phone) {
        if (!isNumeric(text)) {
          return AppStrings.notValidPhoneNumber.capitalize();
        } else if (!text.startsWith('05')) {
          return AppStrings.prePhone.capitalize();
        }
        if (text.length < 10) {
          return AppStrings.numOfDigits.capitalize();
        }
      }
      if (min != null) {
        if (text.length < min) {
          return '${AppStrings.mustBeMoreThan.capitalize()} $min ${min > 10 ? AppStrings.character : AppStrings.characters}';
        }
      }
      if (max != null) {
        if (text.length > max) {
          return '${AppStrings.mustBeLessThan.capitalize()} $max ${max > 10 ? AppStrings.character : AppStrings.characters}';
        }
      }
    }
    return null;
  }

  static void checkStatusCode(int statsCode, Map<String, dynamic> body) {
    if (statsCode == StatusCode.ok) {
      return;
    } else {
      String message = body['error'];

      throw RequestFailure(message);
    }
  }

  static String toRawJson(Map<String, dynamic> json) {
    return jsonEncode(json);
  }

  static void dialog(NavigatorState navigatorState, content,
      {double? contentFontSize,
      double? iconSize,
      FontWeight? contentFontWeight,
      IconData? icon,
      Color? color,
      List<Widget>? actions}) async {
    showDialog(
      context: navigatorState.context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        alignment: Alignment.center,
        scrollable: true,
        content: CustomText(
          text: content,
          textAlign: TextAlign.center,
          fontWeight: contentFontWeight ?? FontWeight.w400,
          fontSize: contentFontSize ?? 20,
        ),
        icon: icon != null
            ? Icon(
                icon,
                color: color,
                size: iconSize ?? 50,
              )
            : null,
        actionsAlignment: MainAxisAlignment.center,
        actions: actions ??
            [
              GestureDetector(
                onTap: () => navigatorState.pop(),
                child: const CustomText(
                  text: 'ok',
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
      ),
    );
  }
}
