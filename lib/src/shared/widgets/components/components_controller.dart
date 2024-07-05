import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/components/visible_items_notifier.dart';

const visibleItemsIncreaseValue = 18;

class ComponentsController {
  ComponentsController({
    required BuildContext context,
    required ComponentType componentType,
    required List<ComponentModel> elements,
  }) {
    _init(
      context,
      componentType,
      elements,
    );
  }

  final adInterval = 15;

  late FavoritesService favoritesService;
  late FavoriteNotifier favoriteNotifier;

  late List<ComponentModel> _components;

  final visibleItemsNotifier = VisibleItemsNotifier([]);

  late List<ComponentModel> _standardComponents;

  void _init(
    BuildContext context,
    ComponentType componentType,
    List<ComponentModel> elements,
  ) {
    _standardComponents = elements;
    _components = _standardComponents;

    final userPreferencesInheritedWidget =
        UserPreferencesInheritedWidget.of(context)!;

    favoriteNotifier = componentType == ComponentType.widget
        ? userPreferencesInheritedWidget.favoriteWidgetNotifier
        : userPreferencesInheritedWidget.favoritePackageNotifier;

    favoritesService = componentType == ComponentType.widget
        ? userPreferencesInheritedWidget.favoriteWidgetsService
        : userPreferencesInheritedWidget.favoritePackagesService;
  }

  void searchComponents(
    String value,
    VoidCallback setStateCallback,
  ) {
    if (value.trim().isNotEmpty) {
      final items = <ComponentModel>[];

      for (ComponentModel widget in _standardComponents) {
        if (widget.name.toLowerCase().contains(
              value.toLowerCase(),
            )) {
          items.add(widget);
        }
      }

      _components = items;
    } else {
      _components = _standardComponents;
    }

    final componentsLength = _components.length;

    visibleItemsNotifier.setComponents(
      _components.sublist(
        0,
        componentsLength >= visibleItemsIncreaseValue
            ? visibleItemsIncreaseValue
            : componentsLength,
      ),
    );
  }

  void addComponents() {
    final visibleItemsLength = visibleItemsNotifier.value.length;
    final componentsLength = _components.length;

    if (visibleItemsLength != componentsLength) {
      final visibleItemsIncrease =
          visibleItemsLength + visibleItemsIncreaseValue;

      visibleItemsNotifier.addComponents(
        _components.sublist(
          visibleItemsLength,
          visibleItemsLength >= componentsLength
              ? visibleItemsIncrease
              : visibleItemsLength + (componentsLength - visibleItemsLength),
        ),
      );
    }
  }
}
