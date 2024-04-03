import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesInheritedWidget extends InheritedWidget {
  const UserPreferencesInheritedWidget({
    super.key,
    required this.widgetsStatusChangedNotifier,
    required this.updateWidgetsStatusChanged,
    required this.sharedPreferences,
    required super.child,
  });

  final ValueNotifier<String> widgetsStatusChangedNotifier;
  final void Function(String value) updateWidgetsStatusChanged;

  final SharedPreferences sharedPreferences;

  static UserPreferencesInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<UserPreferencesInheritedWidget>();
  }

  @override
  bool updateShouldNotify(UserPreferencesInheritedWidget oldWidget) {
    return false;
  }
}
