import 'package:flutter/material.dart';

class LoadingScreenSample extends StatefulWidget {
  const LoadingScreenSample({super.key});

  @override
  State<LoadingScreenSample> createState() => _LoadingScreenSampleState();
}

class _LoadingScreenSampleState extends State<LoadingScreenSample> {
  OverlayEntry? _overlayEntry;

  Future<void> _showLoading() async {
    final color = Theme.of(context).colorScheme.primary;

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Container(
          color: Colors.black.withOpacity(0.8),
          constraints: const BoxConstraints.expand(),
          child: Center(
            child: CircularProgressIndicator(
              color: color,
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);

    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    _overlayEntry?.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _showLoading,
          child: const Text('Show Loading'),
        ),
      ),
    );
  }
}
