import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/providers/component_screen_inherited_widget.dart';

class PopupMenuController {
  PopupMenuController({
    required this.getContext,
  }) {
    _file = ComponentScreenInheritedWidget.of(getContext())!.file;
  }

  final BuildContext Function() getContext;

  late File _file;

  Future<void> copyCode() async {
    final codeString = await _file.readAsString();

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
}
