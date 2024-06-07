import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/components/visible_items_notifier.dart';

const visibleItemsIncreaseValue = 18;

class ComponentsController {
  ComponentsController({
    required List<ComponentModel> elements,
  }) {
    init(
      elements,
    );
  }

  final scrollController = ScrollController();

  late List<ComponentModel> _components;

  final visibleItemsNotifier = VisibleItemsNotifier([]);

  late List<ComponentModel> _standardComponents;

  void init(
    List<ComponentModel> elements,
  ) {
    _standardComponents = elements;
    _components = _standardComponents;

    visibleItemsNotifier.value = _components.sublist(
      0,
      visibleItemsIncreaseValue,
    );

    scrollController.addListener(_onScroll);
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

      _components = items;
    } else {
      _components = _standardComponents;
    }

    setStateCallback();
  }

  void _onScroll() {
    if (scrollController.position.atEdge) {
      if (scrollController.position.pixels != 0) {
        addComponents();
      }
    }
  }

  void addComponents() {
    final visibleItemsLength = visibleItemsNotifier.value.length;
    final componentsLength = _components.length;

    if (visibleItemsLength != _components.length) {
      final visibleItemsIncrease =
          visibleItemsLength + visibleItemsIncreaseValue;

      visibleItemsNotifier.addComponents(
        _components.sublist(
          visibleItemsLength,
          visibleItemsLength >= componentsLength
              ? visibleItemsIncrease
              : visibleItemsLength + (componentsLength - visibleItemsLength),
        ),
      );
    }
  }
}
