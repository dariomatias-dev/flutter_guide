import 'package:flutter/material.dart';

class ScreenModel {
  const ScreenModel({
    required this.bottomNavigationBarName,
    required this.screen,
  });

  final String bottomNavigationBarName;
  final Widget screen;
}
