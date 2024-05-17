import 'package:flutter/material.dart';

class SizedBoxSample extends StatelessWidget {
  const SizedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Image.asset(
            'assets/icons/flutter_icon.png',
          ),
        ),
      ),
    );
  }
}
