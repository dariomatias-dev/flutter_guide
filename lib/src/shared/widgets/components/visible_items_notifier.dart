import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';

class VisibleItemsNotifier extends ValueNotifier<List<ComponentModel>> {
  VisibleItemsNotifier(super.value);

  void setComponents(
    List<ComponentModel> newComponents,
  ) {
    value = newComponents;

    notifyListeners();
  }

  void addComponents(
    List<ComponentModel> newComponents,
  ) {
    value.addAll(newComponents);

    notifyListeners();
  }
}
