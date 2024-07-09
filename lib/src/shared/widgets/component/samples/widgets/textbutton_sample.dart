import 'package:flutter/material.dart';

class TextButtonSample extends StatelessWidget {
  const TextButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            const SizedBox(width: 12.0),
            const TextButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ],
        ),
      ),
    );
  }
}
