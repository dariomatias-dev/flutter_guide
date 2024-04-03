import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

class WidgetListController {
  late List<String> savedWidgets;
  late SharedPreferences _sharedPreferences;

  void didChangeDependencies(BuildContext context) {
    _sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    savedWidgets = _sharedPreferences.getStringList('saved_widgets')!;
  }
}
