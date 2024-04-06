import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/component_list_widget.dart';
import 'package:flutter_guide/src/shared/widgets/saved_components/saved_components_controller.dart';

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
      appBar: AppBar(
        leading: const BackButtonWidget(),
        title: Text(
          'Saved $componentTypeName',
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const <Widget>[
          ChangeThemeButtonWidget(),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: _controller.favoriteNotifier,
        builder: (context, value, child) {
          _controller.getSavedComponents();

          return _controller.components.isNotEmpty
              ? SingleChildScrollView(
                  child: ComponentListWidget(
                    componentType: widget.componentType,
                    components: _controller.components,
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
