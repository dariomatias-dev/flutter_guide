import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/element_model.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({
    super.key,
    required this.example,
  });

  final ElementModel example;

  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreen(
      title: example.name,
      filePath:
          'lib/src/features/example/samples/${example.name.toLowerCase().replaceAll(' ', '_')}_sample.dart',
      sample: example.component,
    );
  }
}
