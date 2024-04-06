import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component/component_screen.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({
    super.key,
    required this.widgetName,
  });

  final String widgetName;

  @override
  Widget build(BuildContext context) {
    return ComponentScreen(
      componentType: ComponentType.widget,
      componentName: widgetName,
    );
  }
}
