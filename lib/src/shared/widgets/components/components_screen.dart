import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/components/components_controller.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/component_list_widget.dart';
import 'package:flutter_guide/src/shared/widgets/components/widgets/search_field_widget/search_field_widget.dart';

class ComponentsScreen extends StatefulWidget {
  const ComponentsScreen({
    super.key,
    required this.componentType,
    required this.components,
  });

  final ComponentType componentType;
  final List<ComponentModel> components;

  @override
  State<ComponentsScreen> createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {
  late ComponentsController _controller;

  @override
  void initState() {
    _controller = ComponentsController(
      elements: widget.components,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          controller: _controller.scrollController,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              SearchFieldWidget(
                componentType: widget.componentType,
                onChange: (String value) {
                  _controller.updateComponentList(value, () {
                    setState(() {});
                  });
                },
              ),
              const SizedBox(height: 12.0),
              ValueListenableBuilder(
                valueListenable: _controller.visibleItemsNotifier,
                builder: (context, value, child) {
                  return ComponentListWidget(
                    componentType: widget.componentType,
                    components: value,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
