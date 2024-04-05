import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/widget_status_notifier.dart';

import 'package:flutter_guide/src/services/bookmarker_service/bookmarker_service.dart';

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
