import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';

class WidgetsMapInheritedWidget extends InheritedWidget {
  const WidgetsMapInheritedWidget({
    super.key,
    required this.widgetsMap,
    required super.child,
  });

  final Map<String, WidgetSummaryModel> widgetsMap;

  static WidgetsMapInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<WidgetsMapInheritedWidget>();
  }

  @override
  bool updateShouldNotify(WidgetsMapInheritedWidget oldWidget) {
    return true;
  }
}
