import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/component_screen_inherited_widget.dart';
import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/code_tab/code_tab_widget.dart';

class ComponentScreen extends StatefulWidget {
  const ComponentScreen({
    super.key,
    required this.componentType,
    required this.componentName,
  });

  final ComponentType componentType;
  final String componentName;

  @override
  State<ComponentScreen> createState() => _ComponentScreenState();
}

class _ComponentScreenState extends State<ComponentScreen> {
  late ComponentSummaryModel _component;
  late File _componentFile;

  @override
  void didChangeDependencies() {
    final componentsMapInheritedWidget =
        ComponentsMapInheritedWidget.of(context)!;
    _component = (widget.componentType == ComponentType.widget
        ? componentsMapInheritedWidget.widgetsMap
        : componentsMapInheritedWidget.packagesMap)[widget.componentName]!;

    final componentTypeName =
        widget.componentType == ComponentType.widget ? 'widget' : 'package';
    _componentFile = File(
      'lib/src/features/$componentTypeName/${componentTypeName}_samples/${widget.componentName.toLowerCase()}_sample.dart',
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ComponentScreenInheritedWidget(
      componentFile: _componentFile,
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBarWidget(
            componentType: widget.componentType,
            componentName: widget.componentName,
            componentCategory: widget.componentType == ComponentType.widget
                ? (_component as WidgetSummaryModel).category
                : null,
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _component.sample,
              ),
              const CodeTab(),
            ],
          ),
        ),
      ),
    );
  }
}
