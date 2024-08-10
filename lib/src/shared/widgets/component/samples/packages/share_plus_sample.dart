import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusSample extends StatelessWidget {
  const SharePlusSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Share.share(
              'https://flutter.dev',
            );
          },
          child: const Text('Share URL'),
        ),
      ),
    );
  }
}
