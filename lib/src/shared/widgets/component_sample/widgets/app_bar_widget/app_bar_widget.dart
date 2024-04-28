import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button/change_theme_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/app_bar_widget/popup_menu_controller.dart';
import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/app_bar_widget/tab_bar_widget.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    required this.popupMenuItems,
  });

  final String title;
  final List<PopupMenuEntry> popupMenuItems;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  late AppBarController _controller;
  final _currentTabIndexNotifier = ValueNotifier(0);

  BuildContext getContext() => context;

  @override
  void didChangeDependencies() {
    _controller = AppBarController(
      getContext: getContext,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButtonWidget(),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      actions: <Widget>[
        const ChangeThemeButtonWidget(),
        const SizedBox(width: 4.0),
        PopupMenuButton(
          iconColor: Theme.of(context).colorScheme.tertiary,
          itemBuilder: (context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                onTap: _controller.copyCode,
                child: const Text('Copy'),
              ),
              ...widget.popupMenuItems,
            ];
          },
        ),
      ],
      bottom: TabBarWidget(
        currentTabIndexNotifier: _currentTabIndexNotifier,
      ),
    );
  }
}
