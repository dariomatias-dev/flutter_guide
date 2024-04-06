import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/component_screen_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/widgets/component/component_controller.dart';
import 'package:flutter_guide/src/shared/widgets/component/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component/widgets/code_tab/code_tab_widget.dart';

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
    return ComponentScreenInheritedWidget(
      file: _controller.file,
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBarWidget(
            componentType: widget.componentType,
            componentName: widget.componentName,
            componentCategory: widget.componentType == ComponentType.widget
                ? (_controller.component as WidgetSummaryModel).category
                : null,
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _controller.component.sample,
              ),
              const CodeTab(),
            ],
          ),
        ),
      ),
    );
  }
}
