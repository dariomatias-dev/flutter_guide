import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

part 'package_summary_model.dart';
part 'widget_summary_model.dart';

class ComponentSummaryModel {
  const ComponentSummaryModel({
    required this.name,
    required this.sample,
  });

  final String name;
  final Widget sample;
}