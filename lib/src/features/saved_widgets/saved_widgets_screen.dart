import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/features/saved_widgets/saved_widgets_controller.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/component_list_widget.dart';

class SavedWidgets extends StatefulWidget {
  const SavedWidgets({super.key});

  @override
  State<SavedWidgets> createState() => _SavedWidgetsState();
}

class _SavedWidgetsState extends State<SavedWidgets> {
  late SavedWidgetsController _controller;

  @override
  void didChangeDependencies() {
    _controller = SavedWidgetsController(
      favoriteWidgetsService:
          UserPreferencesInheritedWidget.of(context)!.favoriteWidgetsService,
    );

    _controller.getSavedWidgets(context);

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
      body: _controller.flutterWidgets.isNotEmpty
          ? SingleChildScrollView(
              child: ValueListenableBuilder(
                valueListenable: UserPreferencesInheritedWidget.of(context)!
                    .favoriteWidgetNotifier,
                builder: (context, value, child) {
                  _controller.getSavedWidgets(context);

                  return ComponentListWidget(
                    componentType: ComponentType.widget,
                    components: _controller.flutterWidgets,
                  );
                },
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
