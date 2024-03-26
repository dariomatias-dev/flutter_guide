import 'package:flutter/material.dart';

import 'package:flutter_guide/src/widgets/card_widget.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(10, (index) {
          return const CardWidget(
            title: 'Widget',
          );
        }),
      ),
    );
  }
}
