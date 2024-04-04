import 'package:flutter/material.dart';

class UrlLauncherSample extends StatelessWidget {
  const UrlLauncherSample({super.key});

  void _openURL() {
    print('oi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: _openURL,
          child: const Text(
            'Open',
          ),
        ),
      ),
    );
  }
}
