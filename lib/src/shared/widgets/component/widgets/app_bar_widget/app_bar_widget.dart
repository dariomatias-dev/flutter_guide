import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component/widgets/app_bar_widget/popup_menu/popup_menu_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component/widgets/app_bar_widget/tab_bar_widget.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.componentType,
    required this.componentName,
    this.componentCategory,
  });

  final ComponentType componentType;
  final String componentName;
  final WidgetCategory? componentCategory;

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
        widget.componentName,
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
              componentType: widget.componentType,
              currentTabIndex: value,
              componentName: widget.componentName,
              componentCategory: widget.componentCategory,
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
