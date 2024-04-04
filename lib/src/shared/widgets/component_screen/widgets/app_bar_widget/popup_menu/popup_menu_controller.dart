import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/providers/component_screen_inherited_widget.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';

class PopupMenuController {
  PopupMenuController({
    required this.componentType,
    required this.componentName,
    required this.getContext,
  });

  final ComponentType componentType;
  final String componentName;
  final BuildContext Function() getContext;

  late WidgetBookmarkerService widgetBookmarkerService;
  late bool saved;

  Future<void> copyCode() async {
    final file = ComponentScreenInheritedWidget.of(getContext())!.componentFile;
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
    String componentName,
    BuildContext context,
  ) {
    widgetBookmarkerService =
        UserPreferencesInheritedWidget.of(context)!.widgetBookmarkerService;
    saved = widgetBookmarkerService.contains(componentName);
  }
}
