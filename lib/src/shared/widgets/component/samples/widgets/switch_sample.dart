import 'package:flutter/material.dart';

class SwitchSample extends StatefulWidget {
  const SwitchSample({super.key});

  @override
  State<SwitchSample> createState() => _SwitchSampleState();
}

class _SwitchSampleState extends State<SwitchSample> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                  value: _isEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isEnabled = !_isEnabled;
                    });
                  },
                ),
                const SizedBox(width: 12.0),
                Text('Enabled: $_isEnabled')
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Switch(
                  value: _isEnabled,
                  onChanged: null,
                ),
                const SizedBox(width: 12.0),
                Text('Enabled: $_isEnabled')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
