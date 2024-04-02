import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_guide/src/shared/utils/open_url.dart';

class PopupMenuWidget extends StatefulWidget {
  const PopupMenuWidget({
    super.key,
    required this.className,
    required this.widgetName,
    required this.currentTabIndex,
  });

  final String className;
  final String widgetName;
  final int currentTabIndex;

  @override
  State<PopupMenuWidget> createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  BuildContext getContext() => context;

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
            onTap: () {},
            child: const Text('Save'),
          ),
          PopupMenuItem(
            onTap: () {
              openURL(
                () => context,
                'https://api.flutter.dev/flutter/material/${widget.className}-class.html',
              );
            },
            child: const Text('Doc'),
          ),
        ];
      },
    );
  }
}
