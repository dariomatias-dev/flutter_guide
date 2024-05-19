import 'package:flutter/material.dart';

class OutlinedButtonSample extends StatelessWidget {
  const OutlinedButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
