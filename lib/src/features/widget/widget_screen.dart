import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:flutter_guide/src/features/widget/widgets/code_tab/code_tab_widget.dart';

import 'package:flutter_guide/src/providers/widgets_map_inherited_widget.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({
    super.key,
    required this.widgetName,
  });

  final String widgetName;

  @override
  Widget build(BuildContext context) {
    final widgetsMap = WidgetsMapInheritedWidget.of(context)!.widgetsMap;

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBarWidget(
          widgetName: widgetName,
          widgetCategory: widgetsMap[widgetName]!.category,
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: widgetsMap[widgetName]!.sample,
            ),
            CodeTab(
              widgetName: widgetName,
            ),
          ],
        ),
      ),
    );
  }
}
