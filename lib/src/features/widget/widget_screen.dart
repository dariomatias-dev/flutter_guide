import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:flutter_guide/src/features/widget/widgets/code_tab.dart';

import 'package:flutter_guide/src/providers/widget_samples_inherited_widget.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final samples = WidgetSamplesInheritedWidget.of(context)!.samples;
    final widgetName = title.replaceAll(" ", "_").toLowerCase();

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBarWidget(
          title: title,
          widgetName: widgetName,
          widgetCategory: samples[widgetName]!.category,
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: samples[widgetName]!.sample,
            ),
            CodeTab(
              widgetName: title.replaceAll(" ", "_").toLowerCase(),
            ),
          ],
        ),
      ),
    );
  }
}
