import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button/change_theme_icon_button/change_theme_icon_button_controller.dart';
import 'package:flutter_guide/src/shared/widgets/icon_button_widget.dart';

class ChangeThemeIconButtonWidget extends StatefulWidget {
  const ChangeThemeIconButtonWidget({super.key});

  @override
  State<ChangeThemeIconButtonWidget> createState() =>
      ChangeThemeIconButtonWidgetState();
}

class ChangeThemeIconButtonWidgetState
    extends State<ChangeThemeIconButtonWidget> {
  late ChangeThemeIconButtonController _controller;

  @override
  void didChangeDependencies() {
    _controller = ChangeThemeIconButtonController(
      context: context,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      onTap: () {
        if (_controller.themeController.themeMode != ThemeMode.system) {
          _controller.themeController.toggleTheme();

          _controller.themeMode = _controller.themeMode == ThemeMode.light
              ? ThemeMode.dark
              : ThemeMode.light;
        }
      },
      icon: _controller.isBrightnessMode
          ? Icons.light_mode_outlined
          : Icons.dark_mode_outlined,
    );
  }
}
