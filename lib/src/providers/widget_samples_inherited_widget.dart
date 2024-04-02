import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';

class WidgetSamplesInheritedWidget extends InheritedWidget {
  const WidgetSamplesInheritedWidget({
    super.key,
    required this.samples,
    required super.child,
  });

  final Map<String, WidgetSample> samples;

  static WidgetSamplesInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<WidgetSamplesInheritedWidget>();
  }

  @override
  bool updateShouldNotify(WidgetSamplesInheritedWidget oldWidget) {
    return true;
  }
}
