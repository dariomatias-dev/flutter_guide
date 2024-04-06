import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/component_list_inherited_widget.dart';
import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class SaveButtonController {
  SaveButtonController({
    required BuildContext context,
    required String componentName,
  }) {
    _init(
      context,
      componentName,
    );
  }

  late FavoriteNotifier favoriteNotifier;
  late FavoritesService favoritesService;

  late bool saved;
  bool hasUpdatedButton = false;

  void _init(
    BuildContext context,
    String componentName,
  ) {
    favoriteNotifier =
        ComponentListInheritedWidget.of(context)!.favoriteNotifier;

    favoritesService =
        ComponentListInheritedWidget.of(context)!.favoritesService;

    setSaved(componentName);
  }

  void setSaved(String componentName) {
    saved = favoritesService.contains(componentName);
  }
}
