import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/ui/ui_controller.dart';
import 'package:flutter_guide/src/shared/models/ui_model.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({
    super.key,
    required this.ui,
  });

  final UiModel ui;

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  late UiController _controller;

  @override
  void initState() {
    _controller = UiController(widget.ui.name);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreen(
      title: widget.ui.name,
      file: _controller.file,
      sample: widget.ui.component,
    );
  }
}
