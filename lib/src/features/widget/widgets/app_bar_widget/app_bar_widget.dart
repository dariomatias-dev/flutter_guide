import 'package:flutter/material.dart';
import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/back_button_widget.dart';
import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/popup_menu_widget.dart';
import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/tab_bar_widget.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButtonWidget(),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      actions: const <Widget>[
        ChangeThemeButtonWidget(),
        SizedBox(width: 4.0),
        PopupMenuWidget(),
      ],
      bottom: const TabBarWidget(),
    );
  }
}
