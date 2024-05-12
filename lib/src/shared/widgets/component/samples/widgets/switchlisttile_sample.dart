import 'package:flutter/material.dart';

class SwitchListTileSample extends StatefulWidget {
  const SwitchListTileSample({super.key});

  @override
  State<SwitchListTileSample> createState() => _SwitchListTileSampleState();
}

class _SwitchListTileSampleState extends State<SwitchListTileSample> {
  final _selectedOptions = List.filled(5, false);

  void _updateSelectedOptions(int index, bool newValue) {
    setState(() {
      _selectedOptions[index] = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_selectedOptions.length, (index) {
          return SwitchListTile(
            title: Text('Switch $index'),
            value: _selectedOptions[index],
            onChanged: (value) => _updateSelectedOptions(
              index,
              value,
            ),
          );
        }),
      ),
    );
  }
}
