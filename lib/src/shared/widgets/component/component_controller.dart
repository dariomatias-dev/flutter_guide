import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';

class ComponentController {
  ComponentController({
    required BuildContext context,
    required ComponentType componentType,
    required String componentName,
  })  : _context = context,
        _componentType = componentType,
        _componentName = componentName {
    _init();
  }

  late File file;
  late ComponentSummaryModel component;

  final BuildContext _context;
  final ComponentType _componentType;
  final String _componentName;

  void _init() {
    final ComponentsMapInheritedWidget(
      :widgetsMap,
      :packagesMap,
    ) = ComponentsMapInheritedWidget.of(_context)!;
    component = (_componentType == ComponentType.widget
        ? widgetsMap
        : packagesMap)[_componentName]!;

    final componentTypeName =
        _componentType == ComponentType.widget ? 'widget' : 'package';
    file = File(
      'lib/src/features/$componentTypeName/${componentTypeName}_samples/${_componentName.toLowerCase()}_sample.dart',
    );
  }
}
