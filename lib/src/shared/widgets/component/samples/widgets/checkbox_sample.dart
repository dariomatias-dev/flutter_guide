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
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                onChanged: (value) {
                  updateSelectedOptions(
                    0,
                    value!,
                  );
                },
                value: _selectedOptions[0],
              ),
              const Text('Item 1'),
            ],
          ),
          const SizedBox(height: 4.0),
          GestureDetector(
            onTap: () {
              updateSelectedOptions(
                1,
                !_selectedOptions[1],
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  onChanged: (value) {
                    updateSelectedOptions(
                      1,
                      value!,
                    );
                  },
                  value: _selectedOptions[1],
                ),
                const Text('Item 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
