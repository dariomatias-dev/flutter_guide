import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

class FavoriteButtonController {
  late FavoriteWidgetsService favoriteWidgetsService;
  late bool saved;

  void didChangeDependencies(
    BuildContext context,
    String componentName,
  ) {
    favoriteWidgetsService =
        UserPreferencesInheritedWidget.of(context)!.favoriteWidgetsService;
    saved = favoriteWidgetsService.contains(componentName);
  }
}
