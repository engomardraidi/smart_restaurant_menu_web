import 'package:flutter/material.dart';
import 'app.dart';
import 'injection_container.dart' as injection_container;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injection_container.init();

  runApp(const SmartRestaurantMenuAWeb());
}
