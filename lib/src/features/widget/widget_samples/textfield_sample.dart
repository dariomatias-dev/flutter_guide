import 'package:flutter/material.dart';

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            hintText: 'Enter something...',
          ),
        ),
      ),
    );
  }
}
