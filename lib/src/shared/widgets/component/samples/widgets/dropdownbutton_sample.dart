import 'package:flutter/material.dart';

class DropdownButtonSample extends StatefulWidget {
  const DropdownButtonSample({super.key});

  @override
  State<DropdownButtonSample> createState() => _DropdownButtonSampleState();
}

class _DropdownButtonSampleState extends State<DropdownButtonSample> {
  int _value = 1;

  void _updateValue(dynamic value) {
    setState(() {
      _value = value;
    });
  }

  DropdownButton _dropdownButton({
    bool disabled = false,
  }) {
    return DropdownButton(
      value: _value,
      items: List.generate(5, (index) {
        return DropdownMenuItem(
          value: index + 1,
          child: Text(
            'Item ${index + 1}',
          ),
        );
      }),
      onChanged: disabled ? null : _updateValue,
    );
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _dropdownButton(),
                const SizedBox(width: 12.0),
                _dropdownButton(disabled: true),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              'DropdownButton without underline',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownButtonHideUnderline(
                  child: _dropdownButton(),
                ),
                const SizedBox(width: 12.0),
                DropdownButtonHideUnderline(
                  child: _dropdownButton(
                    disabled: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
