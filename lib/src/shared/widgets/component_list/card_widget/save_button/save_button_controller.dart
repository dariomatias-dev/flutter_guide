import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/component_list_inherited_widget.dart';
import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class SaveButtonController {
  SaveButtonController({
    required this.context,
  });

  final BuildContext context;

  late FavoriteNotifier favoriteNotifier;
  late FavoritesService favoritesService;

  late bool saved;
  bool hasUpdatedButton = false;

  Icon get icon => Icon(
        saved ? Icons.bookmark : Icons.bookmark_border,
        color: Theme.of(context).colorScheme.tertiary,
      );

  void didChangeDependencies(
    String widgetName,
  ) {
    favoriteNotifier =
        ComponentListInheritedWidget.of(context)!.favoriteNotifier;

    favoritesService =
        ComponentListInheritedWidget.of(context)!.favoritesService;

    setSaved(widgetName);
  }

  void setSaved(String widgetName) {
    saved = favoritesService.contains(widgetName);
  }
}
