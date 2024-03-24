import 'package:flutter/material.dart';

class ModeToggleButtonWidget extends StatefulWidget {
  const ModeToggleButtonWidget({super.key});

  @override
  State<ModeToggleButtonWidget> createState() => _ModeToggleButtonWidgetState();
}

class _ModeToggleButtonWidgetState extends State<ModeToggleButtonWidget> {
  bool isBrightnessMode = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isBrightnessMode = !isBrightnessMode;
        });
      },
      icon: Icon(
        isBrightnessMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
      ),
    );
  }
}
