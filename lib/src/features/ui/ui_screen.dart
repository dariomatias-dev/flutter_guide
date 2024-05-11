import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/ui_model.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

class UiScreen extends StatelessWidget {
  const UiScreen({
    super.key,
    required this.ui,
  });

  final UiModel ui;

  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreen(
      title: ui.name,
      filePath:
          'lib/src/features/ui/samples/${ui.name.toLowerCase().replaceAll(' ', '_')}_sample.dart',
      sample: ui.component,
    );
  }
}
