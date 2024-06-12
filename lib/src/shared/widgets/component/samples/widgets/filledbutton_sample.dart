import 'package:flutter/material.dart';

class FilledButtonSample extends StatelessWidget {
  const FilledButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
      ),
    );
  }
}
