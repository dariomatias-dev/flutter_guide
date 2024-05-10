import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button/change_theme_button_widget.dart';

class StandardAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const StandardAppBarWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Theme.of(context).colorScheme.secondary,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      leading: const BackButtonWidget(),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: const <Widget>[
        ChangeThemeButtonWidget(),
        SizedBox(width: 4.0),
      ],
    );
  }
}
