import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';

class SaveButtonWidget extends StatefulWidget {
  const SaveButtonWidget({
    super.key,
    required this.screenName,
    required this.widgetName,
    required this.saved,
    required this.updateWidgetsStatusChanged,
  });

  final String screenName;
  final String widgetName;
  final bool saved;
  final VoidCallback updateWidgetsStatusChanged;

  @override
  State<SaveButtonWidget> createState() => _SaveButtonWidgetState();
}

class _SaveButtonWidgetState extends State<SaveButtonWidget> {
  late WidgetBookmarkerService _widgetBookmarkerService;
  late bool _saved;

  @override
  void didChangeDependencies() {
    _saved = widget.saved;

    _widgetBookmarkerService = WidgetBookmarkerService(
      context: context,
      sharedPreferences:
          UserPreferencesInheritedWidget.of(context)!.sharedPreferences,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _saved = _widgetBookmarkerService.toggleWidgetState(
          widget.widgetName,
        );

        widget.updateWidgetsStatusChanged();

        setState(() {});
      },
      icon: ValueListenableBuilder(
        valueListenable: UserPreferencesInheritedWidget.of(context)!
            .widgetsStatusChangedNotifier,
        builder: (context, value, child) {
          if (widget.screenName == 'widgets' && value == widget.widgetName) {
            _saved = !_saved;
          }

          return Icon(
            _saved ? Icons.bookmark : Icons.bookmark_border,
            color: Theme.of(context).colorScheme.tertiary,
          );
        },
      ),
    );
  }
}
