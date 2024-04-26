import 'package:flutter/material.dart';

class SliderSample extends StatefulWidget {
  const SliderSample({super.key});

  @override
  State<SliderSample> createState() => _SliderSampleState();
}

class _SliderSampleState extends State<SliderSample> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _value.toString(),
            ),
            Slider(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
