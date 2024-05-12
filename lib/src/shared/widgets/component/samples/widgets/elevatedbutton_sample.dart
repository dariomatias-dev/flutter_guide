import 'package:flutter/material.dart';

class ElevatedButtonSample extends StatelessWidget {
  const ElevatedButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
      ),
    );
  }
}
