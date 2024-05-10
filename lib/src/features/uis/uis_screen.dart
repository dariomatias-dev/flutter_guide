import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/standard_app_bar_widget.dart';

class UisScreen extends StatelessWidget {
  const UisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StandardAppBarWidget(
        title: 'UIs',
      ),
    );
  }
}
