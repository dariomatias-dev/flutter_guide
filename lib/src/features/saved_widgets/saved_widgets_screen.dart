import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widgets.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';
import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/widget_list_widget/widget_list_widget.dart';

class SavedWidgets extends StatefulWidget {
  const SavedWidgets({super.key});

  @override
  State<SavedWidgets> createState() => _SavedWidgetsState();
}

class _SavedWidgetsState extends State<SavedWidgets> {
  late List<WidgetModel> flutterWidgets = [];

  void getSavedWidgets() {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    final savedWidgets = sharedPreferences.getStringList('saved_widgets')!;

    final items = <WidgetModel>[];

    for (WidgetModel widgetItem in widgets) {
      if (savedWidgets.contains(widgetItem.name)) {
        items.add(widgetItem);
      }
    }

    flutterWidgets = items;
  }

  @override
  void didChangeDependencies() {
    getSavedWidgets();

    super.didChangeDependencies();
  }

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
      body: flutterWidgets.isNotEmpty
          ? SingleChildScrollView(
              child: WidgetListWidget(
                widgets: flutterWidgets,
              ),
            )
          : const Center(
              child: Text(
                'No widgets have been saved yet.',
              ),
            ),
    );
  }
}
