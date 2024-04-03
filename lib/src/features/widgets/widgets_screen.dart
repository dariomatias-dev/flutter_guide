import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/widgets/widgets/search_field_widget/search_field_widget.dart';
import 'package:flutter_guide/src/features/widgets/widgets_controller.dart';

import 'package:flutter_guide/src/shared/widgets/widget_list_widget/widget_list_widget.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  final _controller = WidgetsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20.0),
          SearchFieldWidget(onChange: (String value) {
            _controller.updateWidgetList(value, () {
              setState(() {});
            });
          }),
          const SizedBox(height: 16.0),
          WidgetListWidget(
            screenName: 'widgets',
            widgets: _controller.flutterWidgets,
          ),
        ],
      ),
    );
  }
}
