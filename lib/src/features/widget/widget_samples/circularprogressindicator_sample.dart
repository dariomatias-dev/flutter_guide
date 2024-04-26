import 'package:flutter/material.dart';

class CircularProgressIndicatorSample extends StatelessWidget {
  const CircularProgressIndicatorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
