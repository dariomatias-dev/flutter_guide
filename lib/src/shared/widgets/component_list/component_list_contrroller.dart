import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class ComponentListController {
  ComponentListController({
    required this.context,
    required this.componentType,
  }) {
    final userPreferencesInheritedWidget =
        UserPreferencesInheritedWidget.of(context)!;

    favoriteNotifier = componentType == ComponentType.widget
        ? userPreferencesInheritedWidget.favoriteWidgetNotifier
        : userPreferencesInheritedWidget.favoritePackageNotifier;

    favoritesService = componentType == ComponentType.widget
        ? userPreferencesInheritedWidget.favoriteWidgetsService
        : userPreferencesInheritedWidget.favoritePackagesService;
  }

  final BuildContext context;
  final ComponentType componentType;

  late FavoritesService favoritesService;
  late FavoriteNotifier favoriteNotifier;
}
