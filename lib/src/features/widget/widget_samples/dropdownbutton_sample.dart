import 'package:flutter/material.dart';

class DropdownButtonSample extends StatefulWidget {
  const DropdownButtonSample({super.key});

  @override
  State<DropdownButtonSample> createState() => _DropdownButtonSampleState();
}

class _DropdownButtonSampleState extends State<DropdownButtonSample> {
  int _value = 1;

  void updateValue(dynamic value) {
    setState(() {
      _value = value;
    });
  }

  DropdownButton get _dropdownButton => DropdownButton(
        value: _value,
        items: List.generate(5, (index) {
          return DropdownMenuItem(
            value: index + 1,
            child: Text('Item ${index + 1}'),
          );
        }),
        onChanged: updateValue,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'Standard DropdownButton',
            ),
            _dropdownButton,
            const SizedBox(height: 20.0),
            const Text(
              'DropdownButton without underline',
            ),
            DropdownButtonHideUnderline(
              child: _dropdownButton,
            ),
          ],
        ),
      ),
    );
  }
}
