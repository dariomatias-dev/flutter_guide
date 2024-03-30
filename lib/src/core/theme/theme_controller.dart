import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  static ThemeController instance = ThemeController();

  late SharedPreferences sharedPreferences;

  ThemeMode themeMode = ThemeMode.system;

  ThemeController() {
    _initialize();
  }

  Future<void> _initialize() async {
    sharedPreferences = await SharedPreferences.getInstance();

    final theme = sharedPreferences.getString("theme");

    if (theme == ThemeMode.light.name) {
      themeMode = ThemeMode.light;
    } else if (theme == ThemeMode.dark.name) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.system;
    }

    notifyListeners();
  }

  void saveTheme() async {
    await sharedPreferences.setString(
      'theme',
      themeMode.name,
    );
  }

  void setTheme(ThemeMode value) {
    themeMode = value;

    saveTheme();

    notifyListeners();
  }

  void toggleTheme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }

    saveTheme();

    notifyListeners();
  }
}
