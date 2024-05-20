import 'package:flutter/material.dart';

class CenterSample extends StatelessWidget {
  const CenterSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Center'),
      ),
    );
  }
}
