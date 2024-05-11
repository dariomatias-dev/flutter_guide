import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/packages.dart';
import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class SavedComponentsController {
  SavedComponentsController({
    required BuildContext context,
    required ComponentType componentType,
  }) {
    _init(
      context,
      componentType,
    );
  }

  late FavoriteNotifier favoriteNotifier;
  late FavoritesService _favoritesService;

  late List<ComponentModel> components;
  late List<ComponentModel> _groupOfComponents;

  void _init(
    BuildContext context,
    ComponentType componentType,
  ) {
    final UserPreferencesInheritedWidget(
      :getFavoriteNotifier,
      :getFavoritesService
    ) = UserPreferencesInheritedWidget.of(context)!;

    favoriteNotifier = getFavoriteNotifier(componentType);
    _favoritesService = getFavoritesService(componentType);

    _groupOfComponents =
        componentType == ComponentType.widget ? widgets : packages;

    getSavedComponents();
  }

  void getSavedComponents() {
    final items = <ComponentModel>[];

    for (ComponentModel widgetItem in _groupOfComponents) {
      if (_favoritesService.savedComponents.contains(widgetItem.name)) {
        items.add(widgetItem);
      }
    }

    components = items;
  }
}
