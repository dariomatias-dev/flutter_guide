import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/widgets/components/components_screen.dart';
import 'package:flutter_guide/src/shared/widgets/saved_components/saved_components_controller.dart';
import 'package:flutter_guide/src/shared/widgets/standard_app_bar_widget.dart';

class SavedComponents extends StatefulWidget {
  const SavedComponents({
    super.key,
    required this.componentType,
  });

  final ComponentType componentType;

  @override
  State<SavedComponents> createState() => _SavedComponentsState();
}

class _SavedComponentsState extends State<SavedComponents> {
  late SavedComponentsController _controller;

  @override
  void didChangeDependencies() {
    _controller = SavedComponentsController(
      context: context,
      componentType: widget.componentType,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBarWidget(
        titleName: 'Saved ${_controller.componentTypeName}',
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.favoriteNotifier,
        builder: (context, value, child) {
          _controller.getSavedComponents();

          return _controller.components.isNotEmpty
              ? ComponentsScreen(
                  key: GlobalKey(),
                  componentType: widget.componentType,
                  components: _controller.components,
                )
              : Center(
                  child: Text(
                    'No ${_controller.componentTypeName} have been saved yet.',
                  ),
                );
        },
      ),
    );
  }
}
