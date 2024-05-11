import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/packages.dart';
import 'package:flutter_guide/src/core/constants/components/widgets.dart';
import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class ComponentsController {
  ComponentsController({
    required ComponentType componentType,
  }) {
    _init(componentType);
  }

  late List<ComponentModel> _standardComponents;
  late List<ComponentModel> components;

  void _init(
    ComponentType componentType,
  ) {
    _standardComponents =
        componentType == ComponentType.widget ? widgets : packages;
    components = _standardComponents;
  }

  void updateComponentList(
    String value,
    VoidCallback setStateCallback,
  ) {
    if (value.trim().isNotEmpty) {
      final items = <ComponentModel>[];

      for (ComponentModel widget in _standardComponents) {
        if (widget.name.toLowerCase().contains(
              value.toLowerCase(),
            )) {
          items.add(widget);
        }
      }

      components = items;
    } else {
      components = _standardComponents;
    }

    setStateCallback();
  }
}
