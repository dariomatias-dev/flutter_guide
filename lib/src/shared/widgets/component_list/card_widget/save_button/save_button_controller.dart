import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/bookmarker_service/bookmarker_service.dart';

class SaveButtonController {
  SaveButtonController({
    required this.context,
  });

  final BuildContext context;

  late WidgetBookmarkerService widgetBookmarkerService;
  late bool saved;
  bool hasUpdatedButton = false;

  Icon get icon => Icon(
        saved ? Icons.bookmark : Icons.bookmark_border,
        color: Theme.of(context).colorScheme.tertiary,
      );

  void didChangeDependencies(
    String widgetName,
  ) {
    widgetBookmarkerService =
        UserPreferencesInheritedWidget.of(context)!.widgetBookmarkerService;

    setSaved(widgetName);
  }

  void setSaved(String widgetName) {
    saved = widgetBookmarkerService.contains(widgetName);
  }
}
