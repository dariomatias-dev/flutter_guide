import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/flutter_guide_colors.dart';

ThemeData ligthMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: FlutterGuideColors.darkNeutral50,
    secondary: FlutterGuideColors.blue100.withOpacity(0.5),
    tertiary: Colors.grey.shade800,
    background: Colors.white,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: FlutterGuideColors.ligthBlue200,
    secondary: FlutterGuideColors.darkNeutral,
    tertiary: Colors.grey,
    background: FlutterGuideColors.darkNeutral50,
  ),
);
