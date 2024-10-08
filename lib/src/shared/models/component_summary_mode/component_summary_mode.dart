import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

part 'package_summary_model.dart';
part 'widget_summary_model.dart';
part 'function_summary_model.dart';

class ComponentSummaryModel {
  const ComponentSummaryModel({
    required this.name,
    this.videoId,
    required this.sample,
  });

  final String name;
  final String? videoId;
  final Widget sample;
}
