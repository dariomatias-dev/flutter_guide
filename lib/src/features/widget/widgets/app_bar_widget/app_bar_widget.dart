import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/back_button_widget.dart';
import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/popup_menu_widget.dart';
import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/tab_bar_widget.dart';
import 'package:flutter_guide/src/shared/models/widget_model.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    required this.widgetName,
    required this.widgetCategory,
  });

  final String title;
  final String widgetName;
  final WidgetCategory widgetCategory;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final _currentTabIndexNotifier = ValueNotifier(0);

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
        ValueListenableBuilder(
          valueListenable: _currentTabIndexNotifier,
          builder: (context, value, child) {
            return PopupMenuWidget(
              className: widget.title.replaceAll(' ', ''),
              currentTabIndex: value,
              widgetName: widget.widgetName,
              widgetCategory: widget.widgetCategory,
            );
          },
        ),
      ],
      bottom: TabBarWidget(
        currentTabIndexNotifier: _currentTabIndexNotifier,
      ),
    );
  }
}
