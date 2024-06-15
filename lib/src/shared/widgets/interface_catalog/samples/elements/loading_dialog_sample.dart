import 'package:flutter/material.dart';

class LoadingDialogSample extends StatefulWidget {
  const LoadingDialogSample({super.key});

  @override
  State<LoadingDialogSample> createState() => _LoadingDialogSampleState();
}

class _LoadingDialogSampleState extends State<LoadingDialogSample> {
  Future<void> _showLoading() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.8),
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    _closeLoading();
  }

  void _closeLoading() {
    Navigator.pop(context);
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
