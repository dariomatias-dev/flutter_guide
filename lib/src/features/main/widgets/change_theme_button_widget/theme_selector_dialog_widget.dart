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
    return SimpleDialog(
      title: const Text(
        'Select The Theme',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: _themeMode == ThemeMode.light ||
              _themeMode == ThemeMode.system &&
                  MediaQuery.of(context).platformBrightness == Brightness.light
          ? Colors.white
          : FlutterGuideColors.darkNeutral,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      children: [
        Column(
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
        )
      ],
    );
  }
}
