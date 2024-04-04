import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/code_tab/code_tab_widget.dart';

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({
    super.key,
    required this.componentType,
    required this.componentName,
  });

  final ComponentType componentType;
  final String componentName;

  @override
  Widget build(BuildContext context) {
    final componentsMapInheritedWidget =
        ComponentsMapInheritedWidget.of(context)!;
    final component = (componentType == ComponentType.widget
        ? componentsMapInheritedWidget.widgetsMap
        : componentsMapInheritedWidget.packagesMap)[componentName]!;

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBarWidget(
          componentName: componentName,
          componentCategory: componentType == ComponentType.widget
              ? (component as WidgetSummaryModel).category
              : null,
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: component.sample,
            ),
            CodeTab(
              componentType: componentType,
              componentName: componentName,
            ),
          ],
        ),
      ),
    );
  }
}
