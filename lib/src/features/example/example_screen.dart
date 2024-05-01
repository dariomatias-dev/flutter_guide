import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/example/example_controller.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({
    super.key,
    required this.title,
    required this.sample,
  });

  final String title;
  final Widget sample;

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  late ExampleController _controller;

  @override
  void initState() {
    _controller = ExampleController(widget.title);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreen(
      title: widget.title,
      file: _controller.file,
      sample: widget.sample,
    );
  }
}
