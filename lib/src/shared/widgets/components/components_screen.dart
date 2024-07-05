import 'package:flutter/material.dart';
import 'package:scroll_infinity/scroll_infinity.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/card_widget/card_widget.dart';
import 'package:flutter_guide/src/shared/widgets/components/components_controller.dart';
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
  void didChangeDependencies() {
    _controller = ComponentsController(
      context: context,
      componentType: widget.componentType,
      elements: widget.components,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable:
            UserPreferencesInheritedWidget.of(context)!.themeController,
        builder: (context, value, child) {
          _controller.favoritesService.getWidgets();

          return ValueListenableBuilder(
            valueListenable: _controller.initialItemsNotifier,
            builder: (context, value, child) {
              if (value.isEmpty) {
                return Container();
              }

              return ScrollInfinity<ComponentModel?>(
                maxItems: 18,
                header: Column(
                  children: <Widget>[
                    const SizedBox(height: 20.0),
                    SearchFieldWidget(
                      componentType: widget.componentType,
                      onChange: (String value) {
                        _controller.searchComponents(value, () {
                          setState(() {});
                        });
                      },
                    ),
                    const SizedBox(height: 12.0),
                  ],
                ),
                disableInitialRequest: true,
                initialPageIndex: 1,
                initialItems: value,
                interval: _controller.adInterval,
                loadData: _controller.loadData,
                itemBuilder: (value, index) {
                  if (value == null) {
                    return const SizedBox(
                      height: 44.0,
                      child: Placeholder(),
                    );
                  }

                  return SizedBox(
                    height: 44.0,
                    child: CardWidget(
                      componentType: widget.componentType,
                      icon: value.icon,
                      componentName: value.name,
                      videoId: value.videoId,
                      favoritesService: _controller.favoritesService,
                      favoriteNotifier: _controller.favoriteNotifier,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
