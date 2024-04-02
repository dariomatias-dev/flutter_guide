import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';

class SavedWidgets extends StatelessWidget {
  const SavedWidgets({super.key});

  Future<void> getSavedWidgets() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final savedWidgets = sharedPreferences.getStringList('saved_widgets');
    print(savedWidgets);
  }

  @override
  Widget build(BuildContext context) {
    getSavedWidgets();

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
