import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/saved_widgets/saved_widgets_controller.dart';

import 'package:flutter_guide/src/shared/widgets/back_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/change_theme_button_widget/change_theme_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/widget_list_widget/widget_list_widget.dart';

class SavedWidgets extends StatefulWidget {
  const SavedWidgets({super.key});

  @override
  State<SavedWidgets> createState() => _SavedWidgetsState();
}

class _SavedWidgetsState extends State<SavedWidgets> {
  final _controller = SavedWidgetsController();

  @override
  void didChangeDependencies() {
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
              child: WidgetListWidget(
                widgets: _controller.flutterWidgets,
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
