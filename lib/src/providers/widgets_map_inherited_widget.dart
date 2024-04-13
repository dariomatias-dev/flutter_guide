import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';

class ComponentsMapInheritedWidget extends InheritedWidget {
  const ComponentsMapInheritedWidget({
    super.key,
    required this.widgetNames,
    required this.widgetsMap,
    required this.packagesMap,
    required super.child,
  });

  final List<String> widgetNames;

  final Map<String, WidgetSummaryModel> widgetsMap;
  final Map<String, PackageSummaryModel> packagesMap;

  static ComponentsMapInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ComponentsMapInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ComponentsMapInheritedWidget oldWidget) {
    return true;
  }
}
