import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/examples/widgets/examples_app_bar_widget.dart';

class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ExamplesAppNarWidget(),
    );
  }
}
