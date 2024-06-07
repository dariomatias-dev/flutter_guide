import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/card_widget/card_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/component_list_controller.dart';

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

        final quantityOfItems = widget.components.length +
            (widget.components.length ~/ _controller.adInterval);

        return ListView.builder(
          controller: _controller.scrollController,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: quantityOfItems,
          itemBuilder: (context, index) {
            if (index != 0 && index % _controller.adInterval == 0) {
              return const SizedBox(
                height: 44.0,
                child: Placeholder(),
              );
            }
            final component =
                widget.components[index - (index ~/ _controller.adInterval)];

            return SizedBox(
              height: 44.0,
              child: CardWidget(
                componentType: widget.componentType,
                icon: component.icon,
                componentName: component.name,
                videoId: component.videoId,
                favoritesService: _controller.favoritesService,
                favoriteNotifier: _controller.favoriteNotifier,
              ),
            );
          },
        );
      },
    );
  }
}
