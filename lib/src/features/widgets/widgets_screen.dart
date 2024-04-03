import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/widgets.dart';

import 'package:flutter_guide/src/features/widgets/widgets/search_field_widget.dart';

import 'package:flutter_guide/src/shared/models/widget_model.dart';
import 'package:flutter_guide/src/shared/widgets/widget_list_widget.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  List<WidgetModel> flutterWidgets = widgets;

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          SearchFieldWidget(
            onChange: _onChange,
          ),
          const SizedBox(height: 16.0),
          WidgetListWidget(
            widgets: flutterWidgets,
          ),
        ],
      ),
    );
  }
}
