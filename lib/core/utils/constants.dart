import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static double deviceWidth = 375;
  static double deviceHeight = 667;

  static void showErrorDialog(
      {required BuildContext context, required String message}) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          message,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
