import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/widgets.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class WidgetsController {
  List<WidgetModel> flutterWidgets = widgets;

  void updateWidgetList(
    String value,
    VoidCallback setStateCallback,
  ) {
    if (value.trim().isNotEmpty) {
      final items = <WidgetModel>[];

      for (WidgetModel widget in widgets) {
        if (widget.name.toLowerCase().contains(
              value.toLowerCase(),
            )) {
          items.add(widget);
        }
      }

      flutterWidgets = items;
    } else {
      flutterWidgets = widgets;
    }

    setStateCallback();
  }
}
