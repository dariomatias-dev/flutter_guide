import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/widgets.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class SavedWidgetsController {
  late List<WidgetModel> flutterWidgets = [];

  void getSavedWidgets(BuildContext context) {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    final savedWidgets = sharedPreferences.getStringList('saved_widgets')!;

    final items = <WidgetModel>[];

    for (WidgetModel widgetItem in widgets) {
      if (savedWidgets.contains(widgetItem.name)) {
        items.add(widgetItem);
      }
    }

    flutterWidgets = items;
  }
}
