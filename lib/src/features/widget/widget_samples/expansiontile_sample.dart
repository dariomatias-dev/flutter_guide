import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
  const ExpansionTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          title: const Text('Title'),
          children: List.generate(3, (index) {
            return ListTile(
              title: Text('Content ${index + 1}'),
            );
          }),
        ),
      ),
    );
  }
}
