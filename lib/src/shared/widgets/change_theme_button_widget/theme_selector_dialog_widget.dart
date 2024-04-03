part of 'change_theme_button_widget.dart';

class ThemeSelectorDialogWidget extends StatefulWidget {
  const ThemeSelectorDialogWidget({super.key});

  @override
  State<ThemeSelectorDialogWidget> createState() =>
      _ThemeSelectorStateDialogWidget();
}

class _ThemeSelectorStateDialogWidget extends State<ThemeSelectorDialogWidget> {
  late ThemeController _themeController;
  late ThemeMode _themeMode;

  void _updateThemeMode(ThemeMode? value) {
    _themeController.setTheme(value!);

    setState(() {
      _themeMode = value;
    });
  }

  @override
  void didChangeDependencies() {
    _themeController =
        UserPreferencesInheritedWidget.of(context)!.themeController;
    _themeMode = _themeController.themeMode;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Select The Theme',
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
