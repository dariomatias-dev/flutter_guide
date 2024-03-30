import 'package:flutter/material.dart';

part 'change_theme_icon_button_widget.dart';
part 'theme_selector_dialog_widget.dart';

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
