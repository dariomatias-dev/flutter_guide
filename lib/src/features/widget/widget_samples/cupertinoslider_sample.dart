import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderSample extends StatefulWidget {
  const CupertinoSliderSample({super.key});

  @override
  State<CupertinoSliderSample> createState() => _CupertinoSliderSampleState();
}

class _CupertinoSliderSampleState extends State<CupertinoSliderSample> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_value.toString()),
            CupertinoSlider(
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
