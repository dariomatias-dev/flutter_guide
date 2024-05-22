import 'package:flutter/material.dart';

class InkWellSample extends StatelessWidget {
  const InkWellSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Ink(
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
