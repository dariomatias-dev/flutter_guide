import 'package:flutter/material.dart';

class BackButtonSample extends StatelessWidget {
  const BackButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
    );
  }
}
