import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/providers/widget_status_notifier.dart';

class UserPreferencesInheritedWidget extends InheritedWidget {
  const UserPreferencesInheritedWidget({
    super.key,
    required this.widgetsStatusChangedNotifier,
    required this.sharedPreferences,
    required super.child,
  });

  final WidgetStatusNotifier widgetsStatusChangedNotifier;

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
