import 'package:flutter/material.dart';

class CheckboxSample extends StatefulWidget {
  const CheckboxSample({super.key});

  @override
  State<CheckboxSample> createState() => _CheckboxSampleState();
}

class _CheckboxSampleState extends State<CheckboxSample> {
  final _selectedOptions = [false, false];

  void updateSelectedOptions(int index, bool newValue) {
    setState(() {
      _selectedOptions[index] = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(2, (index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                onChanged: (value) {
                  updateSelectedOptions(index, value!);
                },
                value: _selectedOptions[index],
              ),
              Text('Item ${index + 1}'),
            ],
          );
        }),
      ),
    );
  }
}
