import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/flutter_guide_app.dart';

import 'package:flutter_guide/src/core/constants/components/packages.dart';
import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';
import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';
import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeController = ThemeController();
  final sharedPreferences = await SharedPreferences.getInstance();
  themeController.initialize(
    sharedPreferences,
  );

  final favoriteWidgetNotifier = FavoriteWidgetNotifier('');
  final favoriteWidgetsService = FavoriteWidgetsService(
    sharedPreferences: sharedPreferences,
  );

  final favoritePackageNotifier = FavoritePackageNotifier('');
  final favoritePackagesService = FavoritePackagesService(
    sharedPreferences: sharedPreferences,
  );

  FavoriteNotifier getFavoriteNotifier(
    ComponentType componentType,
  ) =>
      componentType == ComponentType.widget
          ? favoriteWidgetNotifier
          : favoritePackageNotifier;

  FavoritesService getFavoritesService(
    ComponentType componentType,
  ) =>
      componentType == ComponentType.widget
          ? favoriteWidgetsService
          : favoritePackagesService;

  runApp(
    UserPreferencesInheritedWidget(
      themeController: themeController,
      favoriteWidgetNotifier: favoriteWidgetNotifier,
      favoritePackageNotifier: favoritePackageNotifier,
      getFavoriteNotifier: getFavoriteNotifier,
      favoriteWidgetsService: favoriteWidgetsService,
      favoritePackagesService: favoritePackagesService,
      getFavoritesService: getFavoritesService,
      sharedPreferences: sharedPreferences,
      child: ComponentsMapInheritedWidget(
        widgetsMap: widgetsMap(),
        packagesMap: packagesMap(),
        child: FlutterGuideApp(
          themeController: themeController,
        ),
      ),
    ),
  );
}
