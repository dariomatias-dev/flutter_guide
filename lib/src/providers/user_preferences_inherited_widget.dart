import 'package:flutter/material.dart';
import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/widget_status_notifier.dart';

class UserPreferencesInheritedWidget extends InheritedWidget {
  const UserPreferencesInheritedWidget({
    super.key,
    required this.themeController,
    required this.widgetsStatusChangedNotifier,
    required this.widgetBookmarkerService,
    required this.sharedPreferences,
    required super.child,
  });

  final ThemeController themeController;
  final WidgetStatusNotifier widgetsStatusChangedNotifier;
  final WidgetBookmarkerService widgetBookmarkerService;

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
