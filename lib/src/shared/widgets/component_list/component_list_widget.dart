import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/card_widget/card_widget.dart';

class ComponentListWidget extends StatefulWidget {
  const ComponentListWidget({
    super.key,
    required this.components,
  });

  final List<ComponentModel> components;

  @override
  State<ComponentListWidget> createState() => _ComponentListWidgetState();
}

class _ComponentListWidgetState extends State<ComponentListWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:
          UserPreferencesInheritedWidget.of(context)!.themeController,
      builder: (context, value, child) {
        UserPreferencesInheritedWidget.of(context)!
            .widgetBookmarkerService
            .getWidgets();

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.components.length,
          itemBuilder: (context, index) {
            final flutterWidget = widget.components[index];

            return CardWidget(
              icon: flutterWidget.icon,
              widgetName: flutterWidget.name,
              youtubeLink: flutterWidget.youtubeLink,
            );
          },
        );
      },
    );
  }
}
