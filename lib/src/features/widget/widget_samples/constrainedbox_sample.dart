import 'package:flutter/material.dart';

class ConstrainedBoxSample extends StatelessWidget {
  const ConstrainedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300.0,
            maxHeight: 300.0,
          ),
          child: Image.asset(
            'assets/icons/flutter_icon.png',
          ),
        ),
      ),
    );
  }
}
