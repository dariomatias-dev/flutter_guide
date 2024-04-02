import 'package:flutter/material.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

class SaveButtonWidget extends StatefulWidget {
  const SaveButtonWidget({
    super.key,
    required this.widgetName,
    required this.saved,
  });

  final String widgetName;
  final bool saved;

  @override
  State<SaveButtonWidget> createState() => _SaveButtonWidgetState();
}

class _SaveButtonWidgetState extends State<SaveButtonWidget> {
  late bool _saved;

  void _saveButtonWidget(BuildContext context) {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;

    List<String>? savedWidgets = sharedPreferences.getStringList(
      'saved_widgets',
    );

    if (savedWidgets == null) {
      savedWidgets = [widget.widgetName];
    } else {
      if (savedWidgets.contains(widget.widgetName)) {
        final items = <String>[];
        for (String savedWidget in savedWidgets) {
          if (savedWidget != widget.widgetName) {
            items.add(savedWidget);
          }
        }

        savedWidgets = items;
      } else {
        savedWidgets.add(widget.widgetName);
      }
    }

    sharedPreferences.setStringList(
      'saved_widgets',
      savedWidgets,
    );

    setState(() {
      _saved = savedWidgets!.contains(widget.widgetName);
    });
  }

  @override
  void initState() {
    _saved = widget.saved;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _saveButtonWidget(context),
      icon: Icon(
        _saved ? Icons.bookmark : Icons.bookmark_border,
        color: Theme.of(context).colorScheme.tertiary,
      ),
    );
  }
}
