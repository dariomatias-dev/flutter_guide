import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/shared/utils/open_url.dart';
import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/app_bar_widget/popup_menu/favorite_button/favorite_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/app_bar_widget/popup_menu/popup_menu_controller.dart';

class PopupMenuWidget extends StatefulWidget {
  const PopupMenuWidget({
    super.key,
    required this.componentType,
    required this.componentName,
    required this.currentTabIndex,
    required this.componentCategory,
  });

  final ComponentType componentType;
  final String componentName;
  final int currentTabIndex;
  final WidgetCategory? componentCategory;

  @override
  State<PopupMenuWidget> createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  late PopupMenuController _controller;

  BuildContext getContext() => context;

  @override
  void didChangeDependencies() {
    _controller = PopupMenuController(
      componentType: widget.componentType,
      componentName: widget.componentName,
      getContext: getContext,
    );

    _controller.didChangeDependencies(
      widget.componentName,
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
              onTap: _controller.copyCode,
              child: const Text('Copy'),
            ),
          FavoriteButtonWidget(
            componentName: widget.componentName,
          ),
          PopupMenuItem(
            onTap: () {
              String url = '';

              if (widget.componentCategory == null) {
                url = 'https://pub.dev/packages/${widget.componentName}';
              } else {
                final componentCategory = _controller.getCategory(
                  widget.componentCategory!,
                );

                url =
                    'https://api.flutter.dev/flutter/$componentCategory/${widget.componentName}-class.html';
              }

              openURL(
                () => context,
                url,
              );
            },
            child: const Text('Doc'),
          ),
        ];
      },
    );
  }
}
