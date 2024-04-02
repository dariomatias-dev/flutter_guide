import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';

class SavedWidgets extends StatelessWidget {
  const SavedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonWidget(),
        title: const Text(
          'Saved Widgets',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const <Widget>[
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Container(),
    );
  }
}
