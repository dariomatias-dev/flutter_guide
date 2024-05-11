import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/widgets/components/components_controller.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/component_list_widget.dart';
import 'package:flutter_guide/src/shared/widgets/components/widgets/search_field_widget/search_field_widget.dart';

class ComponentsScreen extends StatefulWidget {
  const ComponentsScreen({
    super.key,
    required this.componentType,
  });

  final ComponentType componentType;

  @override
  State<ComponentsScreen> createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {
  late ComponentsController _controller;

  @override
  void didChangeDependencies() {
    _controller = ComponentsController(
      componentType: widget.componentType,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              SearchFieldWidget(onChange: (String value) {
                _controller.updateComponentList(value, () {
                  setState(() {});
                });
              }),
              const SizedBox(height: 12.0),
              ComponentListWidget(
                componentType: widget.componentType,
                components: _controller.components,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
