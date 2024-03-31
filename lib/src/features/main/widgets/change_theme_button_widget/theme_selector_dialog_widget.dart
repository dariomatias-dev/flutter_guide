part of 'change_theme_button_widget.dart';

class ThemeSelectorDialogWidget extends StatefulWidget {
  const ThemeSelectorDialogWidget({super.key});

  @override
  State<ThemeSelectorDialogWidget> createState() =>
      _ThemeSelectorStateDialogWidget();
}

class _ThemeSelectorStateDialogWidget extends State<ThemeSelectorDialogWidget> {
  late ThemeMode _themeMode;

  void _updateThemeMode(ThemeMode? value) {
    ThemeController.instance.setTheme(value!);

    setState(() {
      _themeMode = value;
    });
  }

  @override
  void didChangeDependencies() {
    _themeMode = ThemeController.instance.themeMode;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Select The Theme',
      spacingAction: 8.0,
      children: [
        RadioListTile(
          title: const Text('Light'),
          value: ThemeMode.light,
          groupValue: _themeMode,
          onChanged: _updateThemeMode,
        ),
        RadioListTile(
          title: const Text('Dark'),
          value: ThemeMode.dark,
          groupValue: _themeMode,
          onChanged: _updateThemeMode,
        ),
        RadioListTile(
          title: const Text('System'),
          value: ThemeMode.system,
          groupValue: _themeMode,
          onChanged: _updateThemeMode,
        ),
      ],
      actions: [
        CustomDialog.button(
          text: 'Ok',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
