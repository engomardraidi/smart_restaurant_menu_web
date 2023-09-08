import 'package:flutter/material.dart';

import '../flutter_widgets/custom_flutter_svg.dart';

class BackspaceIcon extends StatelessWidget {
  final double? height;
  final double? width;

  const BackspaceIcon({
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFlutterSvg(
      padding: const EdgeInsets.only(left: 10),
      asset: '',
      height: height ?? 20,
      width: width ?? 20,
    );
  }
}
