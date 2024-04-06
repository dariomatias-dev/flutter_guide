import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

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

    _controller.getSavedComponents();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonWidget(),
        title: Text(
          'Saved ${widget.componentType == ComponentType.widget ? 'widgets' : 'packages'}',
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const <Widget>[
          ChangeThemeButtonWidget(),
        ],
      ),
      body: _controller.components.isNotEmpty
          ? SingleChildScrollView(
              child: ValueListenableBuilder(
                valueListenable: UserPreferencesInheritedWidget.of(context)!
                    .favoriteWidgetNotifier,
                builder: (context, value, child) {
                  _controller.getSavedComponents();

                  return ComponentListWidget(
                    componentType: ComponentType.widget,
                    components: _controller.components,
                  );
                },
              ),
            )
          : const Center(
              child: Text(
                'No widgets have been saved yet.',
              ),
            ),
    );
  }
}
