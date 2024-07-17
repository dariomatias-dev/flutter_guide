import 'package:flutter/material.dart';

class MaterialBannerSample extends StatefulWidget {
  const MaterialBannerSample({super.key});

  @override
  State<MaterialBannerSample> createState() => _MaterialBannerSampleState();
}

class _MaterialBannerSampleState extends State<MaterialBannerSample> {
  void _show() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: const Text('Message'),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).clearMaterialBanners();
            },
            child: const Text(
              'Ok',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _show,
          child: const Text('Show'),
        ),
      ),
    );
  }
}
