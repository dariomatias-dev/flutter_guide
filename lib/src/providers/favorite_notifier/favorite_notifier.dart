import 'package:flutter/material.dart';

part 'favorite_package_notifier.dart';
part 'favorite_widget_notifier.dart';

class FavoriteNotifier extends ValueNotifier<String> {
  FavoriteNotifier(
    super.widgetStatus,
  );

  void setValue(String value) {
    super.value = value;

    notifyListeners();
  }
}
