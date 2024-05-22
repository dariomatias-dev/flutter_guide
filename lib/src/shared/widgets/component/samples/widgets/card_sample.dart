import 'package:flutter/material.dart';

class CardSample extends StatelessWidget {
  const CardSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 120.0,
              horizontal: 80.0,
            ),
            child: Text('Card'),
          ),
        ),
      ),
    );
  }
}
