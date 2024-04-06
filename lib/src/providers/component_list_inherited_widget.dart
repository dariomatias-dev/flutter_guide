import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/favorite_notifier/favorite_notifier.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class ComponentListInheritedWidget extends InheritedWidget {
  const ComponentListInheritedWidget({
    super.key,
    required this.favoriteNotifier,
    required this.favoritesService,
    required super.child,
  });

  final FavoriteNotifier favoriteNotifier;
  final FavoritesService favoritesService;

  static ComponentListInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ComponentListInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ComponentListInheritedWidget oldWidget) {
    return true;
  }
}
