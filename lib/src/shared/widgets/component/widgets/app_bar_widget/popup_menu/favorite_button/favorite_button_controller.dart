import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class FavoriteButtonController {
  late FavoritesService favoritesService;
  late FavoriteNotifier favoriteNotifier;

  late bool saved;

  void init(
    BuildContext context,
    ComponentType componentType,
    String componentName,
  ) {
    final UserPreferencesInheritedWidget(
      :getFavoriteNotifier,
      :getFavoritesService
    ) = UserPreferencesInheritedWidget.of(context)!;

    favoriteNotifier = getFavoriteNotifier(componentType);
    favoritesService = getFavoritesService(componentType);

    saved = favoritesService.contains(componentName);
  }
}
