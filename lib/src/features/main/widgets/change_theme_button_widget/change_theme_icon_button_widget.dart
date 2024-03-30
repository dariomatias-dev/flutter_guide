part of 'change_theme_button_widget.dart';

class ChangeThemeIconButtonWidget extends StatefulWidget {
  const ChangeThemeIconButtonWidget({super.key});

  @override
  State<ChangeThemeIconButtonWidget> createState() =>
      ChangeThemeIconButtonWidgetState();
}

class ChangeThemeIconButtonWidgetState
    extends State<ChangeThemeIconButtonWidget> {
  bool _isBrightnessMode = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isBrightnessMode = !_isBrightnessMode;
        });
      },
      icon: Icon(
        _isBrightnessMode
            ? Icons.light_mode_outlined
            : Icons.dark_mode_outlined,
      ),
    );
  }
}
