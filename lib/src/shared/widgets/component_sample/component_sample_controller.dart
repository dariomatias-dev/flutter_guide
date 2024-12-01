import 'package:flutter/material.dart';

class ComponentSampleController {
  static const minFontSize = 10.0;
  static const maxFontSize = 16.0;

  final showFloatingActionsNotifier = ValueNotifier(false);
  final fontSizeNotifier = ValueNotifier(minFontSize);

  void dispose() {
    showFloatingActionsNotifier.dispose();
    fontSizeNotifier.dispose();
  }
}
