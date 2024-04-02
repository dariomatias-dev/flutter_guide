import 'package:flutter/material.dart';

class CheckboxSample extends StatefulWidget {
  const CheckboxSample({super.key});

  @override
  State<CheckboxSample> createState() => _CheckboxSampleState();
}

class _CheckboxSampleState extends State<CheckboxSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                onChanged: (value) {},
                value: false,
              ),
              const Text('Item 1'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                onChanged: (value) {},
                value: false,
              ),
              const Text('Item 2'),
            ],
          ),
        ],
      ),
    );
  }
}
