import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class SaveButtonController {
  SaveButtonController({
    required BuildContext context,
    required String componentName,
    required FavoritesService favoritesService,
    required FavoriteNotifier favoriteNotifier,
  })  : _favoritesService = favoritesService,
        _favoriteNotifier = favoriteNotifier {
    _init(
      context,
      componentName,
    );
  }

  final FavoriteNotifier _favoriteNotifier;
  final FavoritesService _favoritesService;

  late bool saved;

  bool hasUpdatedButton = false;

  void _init(
    BuildContext context,
    String componentName,
  ) {
    setSaved(componentName);
  }

  void ontap(
    BuildContext context,
    String componentName,
  ) {
    _favoritesService.toggleWidgetState(
      context,
      componentName,
    );

    _favoriteNotifier.setValue(
      componentName,
    );
  }

  void setSaved(String componentName) {
    saved = _favoritesService.contains(
      componentName,
    );
  }
}
