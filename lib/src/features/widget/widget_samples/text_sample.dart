import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  const TextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Lorem ipsum dolor sit amet. Est facilis delectus et tempore totam non ipsa tempora.',
        ),
      ),
    );
  }
}
