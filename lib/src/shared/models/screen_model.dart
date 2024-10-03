import 'package:flutter/material.dart';

class ScreenModel {
  const ScreenModel({
    required this.title,
    required this.bottomNavigationBarName,
    required this.screen,
  });

  final String title;
  final String bottomNavigationBarName;
  final Widget screen;
}
