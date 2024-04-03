import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';
import 'package:flutter_guide/src/shared/widgets/widget_list/card_widget/card_widget.dart';
import 'package:flutter_guide/src/shared/widgets/widget_list/widget_list_controller.dart';

class WidgetListWidget extends StatefulWidget {
  const WidgetListWidget({
    super.key,
    required this.widgets,
    required this.screenName,
    this.handleRemoveWidget,
  });

  final List<WidgetModel> widgets;
  final String screenName;
  final VoidCallback? handleRemoveWidget;

  @override
  State<WidgetListWidget> createState() => _WidgetListWidgetState();
}

class _WidgetListWidgetState extends State<WidgetListWidget> {
  final _controller = WidgetListController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable:
          UserPreferencesInheritedWidget.of(context)!.themeController,
      builder: (context, value, child) {
        _controller.getSavedWidgets(context);

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.widgets.length,
          itemBuilder: (context, index) {
            final flutterWidget = widget.widgets[index];

            return CardWidget(
              screenName: widget.screenName,
              icon: flutterWidget.icon,
              widgetName: flutterWidget.name,
              youtubeLink: flutterWidget.youtubeLink,
              saved: _controller.savedWidgetsConstain(
                flutterWidget.name,
              ),
              handleRemoveWidget: widget.handleRemoveWidget,
            );
          },
        );
      },
    );
  }
}
