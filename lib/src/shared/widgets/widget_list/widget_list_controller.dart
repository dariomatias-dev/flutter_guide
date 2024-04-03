import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

class WidgetListController {
  late List<String> savedWidgets;

  void getSavedWidgets(BuildContext context) {
    savedWidgets = UserPreferencesInheritedWidget.of(context)!
        .sharedPreferences
        .getStringList('saved_widgets')!;
  }

  bool savedWidgetsConstain(String widgetName) {
    return savedWidgets.contains(widgetName);
  }
}
