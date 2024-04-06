import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/packages.dart';
import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';
import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class SavedComponentsController {
  SavedComponentsController({
    required this.context,
    required this.componentType,
  }) {
    final UserPreferencesInheritedWidget(
      :favoriteWidgetNotifier,
      :favoritePackageNotifier,
      :favoriteWidgetsService,
      :favoritePackagesService,
    ) = UserPreferencesInheritedWidget.of(context)!;

    final typeIsWidget = componentType == ComponentType.widget;

    favoritesService =
        typeIsWidget ? favoriteWidgetsService : favoritePackagesService;

    favoriteNotifier =
        typeIsWidget ? favoriteWidgetNotifier : favoritePackageNotifier;

    _groupOfComponents = typeIsWidget ? widgets : packages;
  }

  final BuildContext context;
  final ComponentType componentType;

  late List<ComponentModel> _groupOfComponents;

  late FavoriteNotifier favoriteNotifier;
  late FavoritesService favoritesService;

  late List<ComponentModel> components = [];

  void getSavedComponents() {
    final items = <ComponentModel>[];

    for (ComponentModel widgetItem in _groupOfComponents) {
      if (favoritesService.savedComponents.contains(widgetItem.name)) {
        items.add(widgetItem);
      }
    }

    components = items;
  }
}
