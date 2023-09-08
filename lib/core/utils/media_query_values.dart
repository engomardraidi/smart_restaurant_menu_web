import 'package:flutter/material.dart';

extension ContextValues on BuildContext {
  BuildContext get thisContext => this;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get topPadding => MediaQuery.of(this).viewPadding.top;
  double get bottomInsets => MediaQuery.of(this).viewInsets.bottom;
}
