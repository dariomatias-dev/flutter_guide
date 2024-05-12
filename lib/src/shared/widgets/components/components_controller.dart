import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class ComponentsController {
  ComponentsController({
    required List<ComponentModel> elements,
  }) {
    _standardComponents = elements;
    components = _standardComponents;
  }

  late List<ComponentModel> _standardComponents;
  late List<ComponentModel> components;

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
