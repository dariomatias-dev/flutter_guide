import 'package:flutter/material.dart';

class ElevatedButtonSample extends StatelessWidget {
  const ElevatedButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            const SizedBox(width: 12.0),
            const ElevatedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ],
        ),
      ),
    );
  }
}
