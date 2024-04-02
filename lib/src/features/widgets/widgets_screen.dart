import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widgets.dart';

import 'package:flutter_guide/src/features/widgets/widgets/search_field_widget.dart';
import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';
import 'package:flutter_guide/src/shared/widgets/card_widget/card_widget.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  List<WidgetModel> flutterWidgets = widgets;
  late List<String> _savedWidgets;

  void _onChange(String value) {
    if (value.trim().isNotEmpty) {
      final items = <WidgetModel>[];

      for (WidgetModel widget in widgets) {
        if (widget.name.toLowerCase().contains(
              value.toLowerCase(),
            )) {
          items.add(widget);
        }
      }

      flutterWidgets = items;
    } else {
      flutterWidgets = widgets;
    }

    setState(() {});
  }

  @override
  void didChangeDependencies() {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;
    _savedWidgets = sharedPreferences.getStringList('saved_widgets')!;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          SearchFieldWidget(
            onChange: _onChange,
          ),
          const SizedBox(height: 16.0),
          ...List.generate(flutterWidgets.length, (index) {
            final widget = flutterWidgets[index];

            return CardWidget(
              icon: widget.icon,
              widgetName: widget.name,
              youtubeLink: widget.youtubeLink,
              saved: _savedWidgets.contains(widget.name),
            );
          })
        ],
      ),
    );
  }
}
