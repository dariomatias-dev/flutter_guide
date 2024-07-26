import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/flutter_guide_app.dart';

import 'package:flutter_guide/src/core/constants/components/packages.dart';
import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/enums/component_type_enum.dart';
import 'package:flutter_guide/src/core/theme/theme_controller.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';
import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  await dotenv.load(fileName: ".env");

  final themeController = ThemeController();
  final sharedPreferences = await SharedPreferences.getInstance();
  themeController.initialize(
    sharedPreferences,
  );

  // Notifiers
  final favoriteWidgetNotifier = FavoriteWidgetNotifier('');
  final favoritePackageNotifier = FavoritePackageNotifier('');
  FavoriteNotifier getFavoriteNotifier(
    ComponentType componentType,
  ) {
    return componentType == ComponentType.widget
        ? favoriteWidgetNotifier
        : favoritePackageNotifier;
  }

  // Services
  final favoritePackagesService = FavoritePackagesService(
    sharedPreferences: sharedPreferences,
  );
  final favoriteWidgetsService = FavoriteWidgetsService(
    sharedPreferences: sharedPreferences,
  );
  FavoritesService getFavoritesService(
    ComponentType componentType,
  ) {
    return componentType == ComponentType.widget
        ? favoriteWidgetsService
        : favoritePackagesService;
  }

  final widgetInfos = getWidgetInfos();

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
        widgetsMap: widgetInfos.samples,
        packagesMap: packagesMap(),
        widgetNames: widgetInfos.componentNames,
        child: FlutterGuideApp(
          themeController: themeController,
        ),
      ),
    ),
  );
}
