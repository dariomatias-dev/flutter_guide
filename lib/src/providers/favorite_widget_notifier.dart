import 'package:flutter/material.dart';

class FavoriteWidgetNotifier extends ValueNotifier<String> {
  FavoriteWidgetNotifier(
    super.widgetStatus,
  );

  void setValue(String value) {
    super.value = value;
    notifyListeners();
  }
}
