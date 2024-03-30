part of 'change_theme_button_widget.dart';

class ChangeThemeIconButtonWidget extends StatefulWidget {
  const ChangeThemeIconButtonWidget({super.key});

  @override
  State<ChangeThemeIconButtonWidget> createState() =>
      ChangeThemeIconButtonWidgetState();
}

class ChangeThemeIconButtonWidgetState
    extends State<ChangeThemeIconButtonWidget> {
  late ThemeController _themeController;
  late ThemeMode _themeMode;
  late bool _isBrightnessMode;

  void _setBrightnessMode() {
    if (_themeController.themeMode == ThemeMode.system) {
      _isBrightnessMode =
          MediaQuery.of(context).platformBrightness == Brightness.light;
    } else {
      _isBrightnessMode = _themeController.themeMode == ThemeMode.light;
    }

    _themeMode = _themeController.themeMode;
  }

  @override
  void initState() {
    _themeController = ThemeController.instance;
    _setBrightnessMode();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    _setBrightnessMode();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (_themeController.themeMode != ThemeMode.system) {
          ThemeController.instance.toggleTheme();

          _themeMode =
              _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
        }
      },
      icon: Icon(
        _isBrightnessMode
            ? Icons.light_mode_outlined
            : Icons.dark_mode_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
