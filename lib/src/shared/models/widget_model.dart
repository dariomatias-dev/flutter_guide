import 'package:flutter/material.dart';

enum WidgetCategory {
  widgets,
  material,
  cupertino,
}

class WidgetModel {
  const WidgetModel({
    required this.name,
    required this.icon,
    this.youtubeLink,
    required this.sample,
    required this.category,
  });

  final String name;
  final IconData icon;
  final String? youtubeLink;
  final Widget sample;
  final WidgetCategory category;
}

class WidgetSample {
  const WidgetSample({
    required this.category,
    required this.sample,
  });

  final WidgetCategory category;
  final Widget sample;
}
