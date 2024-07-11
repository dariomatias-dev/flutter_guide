import 'package:flutter/material.dart';

class BadgeSample extends StatefulWidget {
  const BadgeSample({super.key});

  @override
  State<BadgeSample> createState() => _BadgeSampleState();
}

class _BadgeSampleState extends State<BadgeSample> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Badge(
          isLabelVisible: _isVisible,
          label: const Text('99'),
          child: const Icon(
            Icons.email,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(
          _isVisible
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
        ),
      ),
    );
  }
}
