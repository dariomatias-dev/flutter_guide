import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';

class PopupMenuController {
  late WidgetBookmarkerService widgetBookmarkerService;
  late bool saved;

  Future<void> copyCode(
    String widgetName,
    BuildContext Function() getContext,
  ) async {
    final file = File(
      'lib/src/features/widget/widget_samples/${widgetName}_sample.dart',
    );

    final codeString = await file.readAsString();

    Clipboard.setData(
      ClipboardData(text: codeString),
    );

    ScaffoldMessenger.of(
      getContext(),
    ).showSnackBar(
      const SnackBar(
        content: Text(
          'Code copied to the clipboard',
        ),
      ),
    );
  }

  String getCategory(
    WidgetCategory widgetCategory,
  ) {
    switch (widgetCategory) {
      case WidgetCategory.widgets:
        return 'widgets';
      case WidgetCategory.material:
        return 'material';
      default:
        return 'cupertino';
    }
  }

  void didChangeDependencies(
    String widgetName,
    BuildContext context,
  ) {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    final savedWidgets = sharedPreferences.getStringList('saved_widgets');

    saved = savedWidgets?.contains(widgetName) ?? false;

    widgetBookmarkerService = WidgetBookmarkerService(
      context: context,
      sharedPreferences: sharedPreferences,
    );
  }
}
