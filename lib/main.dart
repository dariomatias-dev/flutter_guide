import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/flutter_guide_app.dart';

import 'package:flutter_guide/src/core/constants/widgets.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';
import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final widgetsStatusChangedNotifier = ValueNotifier<String>('');
  void updateWidgetsStatusChanged(String value) {
    widgetsStatusChangedNotifier.value = value;
  }

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    UserPreferencesInheritedWidget(
      widgetsStatusChangedNotifier: widgetsStatusChangedNotifier,
      updateWidgetsStatusChanged: updateWidgetsStatusChanged,
      sharedPreferences: sharedPreferences,
      child: WidgetsMapInheritedWidget(
        widgetsMap: widgetsMap(),
        child: const FlutterGuideApp(),
      ),
    ),
  );
}
