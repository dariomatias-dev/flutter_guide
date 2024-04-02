import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

class WidgetSummaryModel {
  const WidgetSummaryModel({
    required this.name,
    required this.category,
    required this.sample,
  });

  final String name;
  final WidgetCategory category;
  final Widget sample;
}
