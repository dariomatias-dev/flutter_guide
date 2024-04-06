import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/widgets/component_list/card_widget/save_button/save_button_controller.dart';

class SaveButtonWidget extends StatefulWidget {
  const SaveButtonWidget({
    super.key,
    required this.widgetName,
  });

  final String widgetName;

  @override
  State<SaveButtonWidget> createState() => _SaveButtonWidgetState();
}

class _SaveButtonWidgetState extends State<SaveButtonWidget> {
  late SaveButtonController _controller;

  @override
  void didChangeDependencies() {
    _controller = SaveButtonController(
      context: context,
    );

    _controller.didChangeDependencies(
      widget.widgetName,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _controller.favoritesService.toggleWidgetState(
          context,
          widget.widgetName,
        );

        _controller.favoriteNotifier.setValue(widget.widgetName);
      },
      icon: ValueListenableBuilder(
        valueListenable:
            UserPreferencesInheritedWidget.of(context)!.favoriteWidgetNotifier,
        builder: (context, value, child) {
          _controller.setSaved(widget.widgetName);

          return _controller.icon;
        },
      ),
    );
  }
}
