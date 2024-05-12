
import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/change_theme_button/theme_selector_dialog/theme_selector_dialog_controller.dart';
import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

class ThemeSelectorDialogWidget extends StatefulWidget {
  const ThemeSelectorDialogWidget({super.key});

  @override
  State<ThemeSelectorDialogWidget> createState() =>
      _ThemeSelectorStateDialogWidget();
}

class _ThemeSelectorStateDialogWidget extends State<ThemeSelectorDialogWidget> {
  late ThemeSelectorDialogController _controller;

  void _setStateCallback() => setState(() {});

  @override
  void didChangeDependencies() {
    _controller = ThemeSelectorDialogController(
      context: context,
      setStateCallback: _setStateCallback,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Select The Theme',
      actions: <ActionButtonWidget>[
        CustomDialog.button(
          text: 'Ok',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
      children: <Widget>[
        RadioListTile(
          title: const Text('Light'),
          value: ThemeMode.light,
          groupValue: _controller.themeMode,
          onChanged: _controller.updateThemeMode,
        ),
        RadioListTile(
          title: const Text('Dark'),
          value: ThemeMode.dark,
          groupValue: _controller.themeMode,
          onChanged: _controller.updateThemeMode,
        ),
        RadioListTile(
          title: const Text('System'),
          value: ThemeMode.system,
          groupValue: _controller.themeMode,
          onChanged: _controller.updateThemeMode,
        ),
      ],
    );
  }
}
