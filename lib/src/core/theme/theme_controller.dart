import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ValueNotifier {
  ThemeController({
    this.themeMode = ThemeMode.system,
  }) : super(themeMode);

  ThemeMode themeMode;

  late SharedPreferences sharedPreferences;

  ThemeController initialize(
    SharedPreferences sharedPreferencesInstance,
  ) {
    sharedPreferences = sharedPreferencesInstance;

    final theme = sharedPreferences.getString("theme");

    if (theme == ThemeMode.light.name) {
      themeMode = ThemeMode.light;
    } else if (theme == ThemeMode.dark.name) {
      themeMode = ThemeMode.dark;
    }

    notifyListeners();

    return ThemeController(
      themeMode: themeMode,
    );
  }

  void setTheme(ThemeMode value) {
    themeMode = value;

    _saveTheme();

    notifyListeners();
  }

  void toggleTheme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }

    _saveTheme();

    notifyListeners();
  }

  void _saveTheme() async {
    await sharedPreferences.setString(
      'theme',
      themeMode.name,
    );
  }
}
