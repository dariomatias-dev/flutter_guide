import 'package:flutter/material.dart';

class InteractiveViewerSample extends StatelessWidget {
  const InteractiveViewerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Center(
          child: Image.asset(
            'assets/icons/flutter_icon.png',
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}
