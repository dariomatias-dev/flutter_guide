import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/card_widget/card_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/component_list_contrroller.dart';

class ComponentListWidget extends StatefulWidget {
  const ComponentListWidget({
    super.key,
    required this.componentType,
    required this.components,
  });

  final ComponentType componentType;
  final List<ComponentModel> components;

  @override
  State<ComponentListWidget> createState() => _ComponentListWidgetState();
}

class _ComponentListWidgetState extends State<ComponentListWidget> {
  late ComponentListController _controller;

  @override
  void didChangeDependencies() {
    _controller = ComponentListController(
      context: context,
      componentType: widget.componentType,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:
          UserPreferencesInheritedWidget.of(context)!.themeController,
      builder: (context, value, child) {
        _controller.favoritesService.getWidgets();
    
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.components.length,
          itemBuilder: (context, index) {
            final flutterWidget = widget.components[index];
    
            return CardWidget(
              componentType: widget.componentType,
              icon: flutterWidget.icon,
              componentName: flutterWidget.name,
              videoId: flutterWidget.videoId,
              favoritesService: _controller.favoritesService,
              favoriteNotifier: _controller.favoriteNotifier,
            );
          },
        );
      },
    );
  }
}
