import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component/component_controller.dart';
import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

class ComponentScreen extends StatefulWidget {
  const ComponentScreen({
    super.key,
    required this.componentType,
    required this.componentName,
  });

  final ComponentType componentType;
  final String componentName;

  @override
  State<ComponentScreen> createState() => _ComponentScreenState();
}

class _ComponentScreenState extends State<ComponentScreen> {
  late ComponentController _controller;
  // final _currentTabIndexNotifier = ValueNotifier(0);

  @override
  void didChangeDependencies() {
    _controller = ComponentController(
      context: context,
      componentType: widget.componentType,
      componentName: widget.componentName,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ComponentSampleScreen(
      title: widget.componentName,
      file: _controller.file,
      sample: _controller.component.sample,
    );
  }
}
