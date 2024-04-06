import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

class ThemeSelectorDialogController {
  ThemeSelectorDialogController({
    required BuildContext context,
    required this.setStateCallback,
  }) {
    _init(context);
  }

  final VoidCallback setStateCallback;

  late ThemeMode themeMode;
  late ThemeController _themeController;

  void _init(context) {
    _themeController =
        UserPreferencesInheritedWidget.of(context)!.themeController;
    themeMode = _themeController.themeMode;
  }

  void updateThemeMode(
    ThemeMode? value,
  ) {
    _themeController.setTheme(value!);

    themeMode = value;

    setStateCallback();
  }
}
