import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

part 'package_model.dart';
part 'widget_model.dart';

class ComponentModel {
  const ComponentModel({
    required this.name,
    required this.icon,
    this.youtubeLink,
    required this.sample,
  });

  final String name;
  final IconData icon;
  final String? youtubeLink;
  final Widget sample;
}
