import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/example/example_controller.dart';
import 'package:flutter_guide/src/shared/models/example_model.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({
    super.key,
    required this.example,
  });

  final ExampleModel example;

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  late ExampleController _controller;

  @override
  void initState() {
    _controller = ExampleController(widget.example.name);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreen(
      title: widget.example.name,
      file: _controller.file,
      sample: widget.example.component,
    );
  }
}
