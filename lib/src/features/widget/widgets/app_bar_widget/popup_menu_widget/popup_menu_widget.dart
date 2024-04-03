import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/popup_menu_widget/popup_menu_controller.dart';

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
  final _controller = PopupMenuController();

  BuildContext getContext() => context;

  @override
  void didChangeDependencies() {
    _controller.didChangeDependencies(
      widget.widgetName,
      context,
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
              onTap: () => _controller.copyCode(
                widget.widgetName,
                getContext,
              ),
              child: const Text('Copy'),
            ),
          PopupMenuItem(
            onTap: () {
              setState(() {
                _controller.saved =
                    _controller.widgetBookmarkerService.toggleWidgetState(
                  widget.widgetName,
                );
              });
            },
            child: Text(
              _controller.saved ? 'Remove' : 'Save',
            ),
          ),
          PopupMenuItem(
            onTap: () {
              final widgetCategory = _controller.getCategory(
                widget.widgetCategory,
              );

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
