import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

class ChangeThemeIconButtonController {
  ChangeThemeIconButtonController({
    required this.context,
  }) {
    _init();
  }

  final BuildContext context;

  late ThemeController themeController;
  late ThemeMode themeMode;
  late bool isBrightnessMode;

  void _init() {
    themeController =
        UserPreferencesInheritedWidget.of(context)!.themeController;

    setBrightnessMode();
  }

  void setBrightnessMode() {
    if (themeController.themeMode == ThemeMode.system) {
      isBrightnessMode =
          MediaQuery.of(context).platformBrightness == Brightness.light;
    } else {
      isBrightnessMode = themeController.themeMode == ThemeMode.light;
    }

    themeMode = themeController.themeMode;
  }
}
