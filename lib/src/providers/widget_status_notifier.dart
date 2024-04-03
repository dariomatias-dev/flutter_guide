import 'package:flutter/material.dart';

class WidgetStatusNotifier extends ValueNotifier<String> {
  WidgetStatusNotifier(
    super.widgetStatus,
  );

  void setValue(String value) {
    super.value = value;
    notifyListeners();
  }
}
