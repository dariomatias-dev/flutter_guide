import 'package:flutter/material.dart';

class CheckboxListTileSample extends StatefulWidget {
  const CheckboxListTileSample({super.key});

  @override
  State<CheckboxListTileSample> createState() => _CheckboxListTileSampleState();
}

class _CheckboxListTileSampleState extends State<CheckboxListTileSample> {
  final _selectedOptions = List.filled(3, false);

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(_selectedOptions.length, (index) {
              return CheckboxListTile(
                value: _selectedOptions[index],
                title: Text('Checkbox $index'),
                onChanged: (value) => updateSelectedOptions(
                  index,
                  value!,
                ),
              );
            }),
          ),
          const SizedBox(height: 12.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(_selectedOptions.length, (index) {
              return CheckboxListTile(
                value: _selectedOptions[index],
                title: Text('Checkbox $index'),
                onChanged: null,
              );
            }),
          ),
        ],
      ),
    );
  }
}
