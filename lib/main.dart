import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/flutter_guide_app.dart';

import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';
import 'package:flutter_guide/src/providers/widget_status_notifier.dart';
import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeController = ThemeController();
  final widgetsStatusChangedNotifier = WidgetStatusNotifier('');
  final sharedPreferences = await SharedPreferences.getInstance();
  themeController.initialize(
    sharedPreferences,
  );

  final widgetBookmarkerService = WidgetBookmarkerService(
    sharedPreferences: sharedPreferences,
  );

  runApp(
    UserPreferencesInheritedWidget(
      themeController: themeController,
      widgetsStatusChangedNotifier: widgetsStatusChangedNotifier,
      widgetBookmarkerService: widgetBookmarkerService,
      sharedPreferences: sharedPreferences,
      child: WidgetsMapInheritedWidget(
        widgetsMap: widgetsMap(),
        child: FlutterGuideApp(
          themeController: themeController,
        ),
      ),
    ),
  );
}
