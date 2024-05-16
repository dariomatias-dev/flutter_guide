import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/utils/show_custom_dialog.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button/theme_selector_dialog/theme_selector_dialog_widget.dart';

class ChangeThemeButtonController {
  ChangeThemeButtonController({
    required BuildContext context,
  }) {
    _context = context;
    _init();
  }

  late BuildContext _context;

  late ThemeController _themeController;
  late ThemeMode _themeMode;
  late bool isBrightnessMode;

  void _init() {
    _themeController =
        UserPreferencesInheritedWidget.of(_context)!.themeController;

    _themeMode = _themeController.themeMode;

    setBrightnessMode();
  }

  void setBrightnessMode() {
    if (_themeController.themeMode == ThemeMode.system) {
      isBrightnessMode =
          MediaQuery.of(_context).platformBrightness == Brightness.light;
    } else {
      isBrightnessMode = _themeController.themeMode == ThemeMode.light;
    }
  }

  void toggleTheme(
    VoidCallback setStateCallback,
  ) {
    if (_themeController.themeMode != ThemeMode.system) {
      _themeController.toggleTheme();

      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

      setBrightnessMode();

      setStateCallback();
    }
  }

  void showThemeSelectorDialog() {
    showCustomDialog(
      context: _context,
      builder: (overlayEntry) {
        return ThemeSelectorDialogWidget(
          overlayEntry: overlayEntry,
        );
      },
    );
  }
}
