import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/widget/widgets/app_bar_widget/app_bar_widget.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBarWidget(
          title: title,
        ),
        body: const TabBarView(
          children: [
            Text('Preview'),
            Text('Code'),
          ],
        ),
      ),
    );
  }
}
