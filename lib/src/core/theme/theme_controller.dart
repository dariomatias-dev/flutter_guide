import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  static ThemeController instance = ThemeController();

  late ThemeMode themeMode;

  ThemeController() {
    _initialize();
  }

  Future<void> _initialize() async {
    themeMode = ThemeMode.light;
  }

  void setTheme(ThemeMode value) {
    themeMode = value;

    notifyListeners();
  }

  void toggleTheme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }

    notifyListeners();
  }
}
