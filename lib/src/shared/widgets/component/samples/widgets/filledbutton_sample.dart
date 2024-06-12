import 'package:flutter/material.dart';

class FilledButtonSample extends StatelessWidget {
  const FilledButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FilledButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const SizedBox(height: 12.0),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const SizedBox(height: 12.0),
            FilledButton.icon(
              onPressed: () {},
              label: const Text('Add'),
              icon: const Icon(Icons.add),
            ),
            const SizedBox(height: 12.0),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: const Text('Add'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
