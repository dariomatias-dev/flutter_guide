part of 'change_theme_button_widget.dart';

class ThemeSelectorDialogWidget extends StatefulWidget {
  const ThemeSelectorDialogWidget({super.key});

  @override
  State<ThemeSelectorDialogWidget> createState() =>
      _ThemeSelectorStateDialogWidget();
}

class _ThemeSelectorStateDialogWidget extends State<ThemeSelectorDialogWidget> {
  String _themeMode = ThemeMode.light.name;

  void _updateThemeMode(String? value) {
    setState(() {
      _themeMode = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text(
        'Select Theme',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      children: [
        Column(
          children: [
            RadioListTile(
              title: const Text('Light'),
              value: ThemeMode.light.name,
              groupValue: _themeMode,
              onChanged: _updateThemeMode,
            ),
            RadioListTile(
              title: const Text('Dark'),
              value: ThemeMode.dark.name,
              groupValue: _themeMode,
              onChanged: _updateThemeMode,
            ),
            RadioListTile(
              title: const Text('System'),
              value: ThemeMode.system.name,
              groupValue: _themeMode,
              onChanged: _updateThemeMode,
            ),
          ],
        )
      ],
    );
  }
}
