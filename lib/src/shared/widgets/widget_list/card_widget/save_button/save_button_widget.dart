import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/widgets/widget_list/card_widget/save_button/save_button_controller.dart';

class SaveButtonWidget extends StatefulWidget {
  const SaveButtonWidget({
    super.key,
    required this.screenName,
    required this.widgetName,
    required this.saved,
    this.handleRemoveWidget,
  });

  final String screenName;
  final String widgetName;
  final bool saved;
  final VoidCallback? handleRemoveWidget;

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
      widget.saved,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        final saved = _controller.widgetBookmarkerService.toggleWidgetState(
          widget.widgetName,
        );
        _controller.saved =
            widget.screenName != FlutterGuideRouteNames.savedWidgets ? saved : _controller.saved;

        if (widget.screenName != FlutterGuideRouteNames.widgets) {
          UserPreferencesInheritedWidget.of(context)!
              .widgetsStatusChangedNotifier
              .setValue(widget.widgetName);
        }

        _controller.hasUpdatedButton = true;

        if (widget.handleRemoveWidget != null) widget.handleRemoveWidget!();

        setState(() {});
      },
      icon: widget.screenName == FlutterGuideRouteNames.widgets
          ? ValueListenableBuilder(
              valueListenable: UserPreferencesInheritedWidget.of(context)!
                  .widgetsStatusChangedNotifier,
              builder: (context, value, child) {
                if (value == widget.widgetName &&
                    !_controller.hasUpdatedButton) {
                  _controller.saved = !_controller.saved;
                }

                _controller.hasUpdatedButton = false;

                return _controller.icon;
              },
            )
          : _controller.icon,
    );
  }
}
