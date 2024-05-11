import 'package:flutter/material.dart';

class InputChipSample extends StatefulWidget {
  const InputChipSample({super.key});

  @override
  State<InputChipSample> createState() => _InputChipSampleState();
}

class _InputChipSampleState extends State<InputChipSample> {
  late List<int> _inputs;
  int _selectedItemIndex = 0;

  void _selectInput(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  void _addInput() {
    setState(() {
      _inputs.add(
        _inputs.length,
      );
    });
  }

  void _removeInput() {
    setState(() {
      _inputs.removeLast();
    });
  }

  void _removeSelectedInput(int index) {
    setState(() {
      _inputs.removeAt(index);
    });
  }

  void _generateInputs() {
    _inputs = List.generate(
      3,
      (index) => index + 1,
    );
  }

  void _resetInputs() {
    setState(() {
      _generateInputs();
    });
  }

  @override
  void initState() {
    _generateInputs();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 6.0,
              runSpacing: 6.0,
              alignment: WrapAlignment.center,
              children: List.generate(_inputs.length, (index) {
                return InputChip(
                  label: Text(
                    'Item ${_inputs[index]}',
                  ),
                  selected: _selectedItemIndex == index,
                  onSelected: (value) => _selectInput(index),
                  onDeleted: () => _removeSelectedInput(index),
                );
              }),
            ),
            const SizedBox(height: 20.0),
            Wrap(
              direction: Axis.horizontal,
              spacing: 6.0,
              children: [
                ElevatedButton(
                  onPressed: _inputs.length <= 10 ? _addInput : null,
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: _inputs.length != 3 ? _removeInput : null,
                  child: const Text('Remove'),
                ),
                ElevatedButton(
                  onPressed: _resetInputs,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
