import 'package:flutter/widgets.dart';

class MainController {
  int screenIndex = 0;

  void updateScreenIndex(
    VoidCallback setStateCallback,
    int value,
  ) {
    screenIndex = value;

    setStateCallback();
  }
}
