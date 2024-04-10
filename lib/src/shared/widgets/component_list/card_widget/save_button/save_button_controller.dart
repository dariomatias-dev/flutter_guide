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
  late FavoritesService _favoritesService;

  late bool saved;
  bool hasUpdatedButton = false;

  void _init(
    BuildContext context,
    String componentName,
  ) {
    favoriteNotifier =
        ComponentListInheritedWidget.of(context)!.favoriteNotifier;

    _favoritesService =
        ComponentListInheritedWidget.of(context)!.favoritesService;

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

    favoriteNotifier.setValue(componentName);
  }

  void setSaved(String componentName) {
    saved = _favoritesService.contains(componentName);
  }
}
