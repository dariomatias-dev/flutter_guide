import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';

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
    bool savedValue,
  ) {
    saved = savedValue;

    widgetBookmarkerService = WidgetBookmarkerService(
      context: context,
      sharedPreferences:
          UserPreferencesInheritedWidget.of(context)!.sharedPreferences,
    );
  }
}
