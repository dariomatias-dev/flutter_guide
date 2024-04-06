import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button/change_theme_icon_button/change_theme_icon_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button/theme_selector_dialog/theme_selector_dialog_widget.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) => const ThemeSelectorDialogWidget(),
        );
      },
      child: const ChangeThemeIconButtonWidget(),
    );
  }
}
