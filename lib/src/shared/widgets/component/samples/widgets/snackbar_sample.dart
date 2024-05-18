import 'package:flutter/material.dart';

class SnackBarSample extends StatefulWidget {
  const SnackBarSample({super.key});

  @override
  State<SnackBarSample> createState() => _SnackBarSampleState();
}

class _SnackBarSampleState extends State<SnackBarSample> {
  ScaffoldFeatureController? scaffoldFeatureController;
  void _showSnackBar() {
    final snackBar = SnackBar(
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
      content: const Text('SnackBar'),
    );

    scaffoldFeatureController = ScaffoldMessenger.of(context).showSnackBar(
      snackBar,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _showSnackBar,
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
