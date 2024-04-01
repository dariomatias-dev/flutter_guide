import 'package:flutter/material.dart';

class WidgetModel {
  const WidgetModel({
    required this.name,
    required this.icon,
    this.youtubeLink,
    this.sample,
  });

  final String name;
  final IconData icon;
  final String? youtubeLink;
  final Widget? sample;
}
