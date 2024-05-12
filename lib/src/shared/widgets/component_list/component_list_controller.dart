import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class ComponentListController {
  ComponentListController({
    required BuildContext context,
    required ComponentType componentType,
  }) {
    _init(
      context,
      componentType,
    );
  }

  final adInterval = 15;

  late FavoritesService favoritesService;
  late FavoriteNotifier favoriteNotifier;

  void _init(
    BuildContext context,
    ComponentType componentType,
  ) {
    final userPreferencesInheritedWidget =
        UserPreferencesInheritedWidget.of(context)!;

    favoriteNotifier = componentType == ComponentType.widget
        ? userPreferencesInheritedWidget.favoriteWidgetNotifier
        : userPreferencesInheritedWidget.favoritePackageNotifier;

    favoritesService = componentType == ComponentType.widget
        ? userPreferencesInheritedWidget.favoriteWidgetsService
        : userPreferencesInheritedWidget.favoritePackagesService;
  }
}
