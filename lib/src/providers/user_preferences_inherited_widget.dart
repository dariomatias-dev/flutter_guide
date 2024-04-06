import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class UserPreferencesInheritedWidget extends InheritedWidget {
  const UserPreferencesInheritedWidget({
    super.key,
    required this.themeController,
    required this.sharedPreferences,
    required this.favoriteWidgetNotifier,
    required this.favoriteWidgetsService,
    required this.favoritePackageNotifier,
    required this.favoritePackagesService,
    required super.child,
  });

  final ThemeController themeController;
  final SharedPreferences sharedPreferences;

  final FavoriteWidgetNotifier favoriteWidgetNotifier;
  final FavoriteWidgetsService favoriteWidgetsService;

  final FavoritePackageNotifier favoritePackageNotifier;
  final FavoritePackagesService favoritePackagesService;

  static UserPreferencesInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<UserPreferencesInheritedWidget>();
  }

  @override
  bool updateShouldNotify(UserPreferencesInheritedWidget oldWidget) {
    return false;
  }
}
