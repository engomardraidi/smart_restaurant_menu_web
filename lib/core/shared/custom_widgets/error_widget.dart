import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
// import '../../utils/assets_manager.dart';
import '../flutter_widgets/custom_flutter_svg.dart';
import '../flutter_widgets/custom_text.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFlutterSvg(
            asset: '',
            color: AppColors.primaryColor,
            width: 100,
            height: 100,
          ),
          CustomText(
            text: 'An error occurred',
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
