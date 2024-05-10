import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component_list/component_list_widget.dart';
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
    final componentTypeName =
        widget.componentType == ComponentType.widget ? 'widgets' : 'packages';

    return Scaffold(
      appBar: StandardAppBarWidget(
        titleName: 'Saved $componentTypeName',
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.favoriteNotifier,
        builder: (context, value, child) {
          _controller.getSavedComponents();

          return _controller.components.isNotEmpty
              ? ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: false,
                  ),
                  child: SingleChildScrollView(
                    child: ComponentListWidget(
                      componentType: widget.componentType,
                      components: _controller.components,
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    'No $componentTypeName have been saved yet.',
                  ),
                );
        },
      ),
    );
  }
}
