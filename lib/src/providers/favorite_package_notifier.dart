import 'package:flutter/material.dart';

class FavoritePackageNotifier extends ValueNotifier<String> {
  FavoritePackageNotifier(
    super.widgetStatus,
  );

  void setValue(String value) {
    super.value = value;
    notifyListeners();
  }
}
