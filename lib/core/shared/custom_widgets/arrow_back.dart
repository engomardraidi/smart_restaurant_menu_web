import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      ),
    );
  }
}
