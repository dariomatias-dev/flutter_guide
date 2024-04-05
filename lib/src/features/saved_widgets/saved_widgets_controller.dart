import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/widgets.dart';

import 'package:flutter_guide/src/services/bookmarker_service/favorites_service.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class SavedWidgetsController {
  SavedWidgetsController({
    required this.favoriteWidgetsService,
  });

  final FavoriteWidgetsService favoriteWidgetsService;

  late List<WidgetModel> flutterWidgets = [];

  void getSavedWidgets(BuildContext context) {
    final items = <WidgetModel>[];

    for (WidgetModel widgetItem in widgets) {
      if (favoriteWidgetsService.savedComponents.contains(widgetItem.name)) {
        items.add(widgetItem);
      }
    }

    flutterWidgets = items;
  }
}
