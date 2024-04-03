import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';
import 'package:flutter_guide/src/services/widget_bookmarker_service.dart';

import 'package:flutter_guide/src/shared/utils/open_url.dart';

class PopupMenuWidget extends StatefulWidget {
  const PopupMenuWidget({
    super.key,
    required this.className,
    required this.widgetName,
    required this.currentTabIndex,
    required this.widgetCategory,
  });

  final String className;
  final String widgetName;
  final int currentTabIndex;
  final WidgetCategory widgetCategory;

  @override
  State<PopupMenuWidget> createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  late WidgetBookmarkerService _widgetBookmarkerService;
  BuildContext getContext() => context;
  late bool _saved;

  Future<void> copyCode() async {
    final file = File(
      'lib/src/features/widget/widget_samples/${widget.widgetName}_sample.dart',
    );

    final codeString = await file.readAsString();

    Clipboard.setData(
      ClipboardData(text: codeString),
    );

    ScaffoldMessenger.of(
      getContext(),
    ).showSnackBar(
      const SnackBar(
        content: Text(
          'Code copied to the clipboard',
        ),
      ),
    );
  }

  String getCategory() {
    switch (widget.widgetCategory) {
      case WidgetCategory.widgets:
        return 'widgets';
      case WidgetCategory.material:
        return 'material';
      default:
        return 'cupertino';
    }
  }

  @override
  void didChangeDependencies() {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    final savedWidgets = sharedPreferences.getStringList('saved_widgets');

    _saved = savedWidgets?.contains(widget.widgetName) ?? false;

    _widgetBookmarkerService = WidgetBookmarkerService(
      context: context,
      sharedPreferences: sharedPreferences,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconColor: Theme.of(context).colorScheme.tertiary,
      itemBuilder: (context) {
        return [
          if (widget.currentTabIndex == 1)
            PopupMenuItem(
              onTap: copyCode,
              child: const Text('Copy'),
            ),
          PopupMenuItem(
            onTap: () {
              setState(() {
                _saved = _widgetBookmarkerService.toggleWidgetState(
                  widget.widgetName,
                );
              });
            },
            child: Text(
              _saved ? 'Remove' : 'Save',
            ),
          ),
          PopupMenuItem(
            onTap: () {
              final widgetCategory = getCategory();

              openURL(
                () => context,
                'https://api.flutter.dev/flutter/$widgetCategory/${widget.className}-class.html',
              );
            },
            child: const Text('Doc'),
          ),
        ];
      },
    );
  }
}
