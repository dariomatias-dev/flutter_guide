import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastificationSample extends StatefulWidget {
  const ToastificationSample({super.key});

  @override
  State<ToastificationSample> createState() => _ToastificationSampleState();
}

class _ToastificationSampleState extends State<ToastificationSample> {
  void _showNotification() {
    toastification.show(
      context: context,
      title: const Text('Hello, world!'),
      autoCloseDuration: const Duration(seconds: 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _showNotification,
          child: const Text('Show'),
        ),
      ),
    );
  }
}
