import 'package:flutter/material.dart';

class RangeSliderSample extends StatefulWidget {
  const RangeSliderSample({super.key});

  @override
  State<RangeSliderSample> createState() => _RangeSliderSampleState();
}

class _RangeSliderSampleState extends State<RangeSliderSample> {
  RangeValues _values = const RangeValues(
    0.0,
    1.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${_values.start} - ${_values.end}'),
            RangeSlider(
              values: _values,
              onChanged: (value) {
                setState(() {
                  _values = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
