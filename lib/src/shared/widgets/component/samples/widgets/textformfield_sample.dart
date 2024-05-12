import 'package:flutter/material.dart';

const defaultMessage = 'Type something below';

class TextFormFieldSample extends StatefulWidget {
  const TextFormFieldSample({super.key});

  @override
  State<TextFormFieldSample> createState() => _TextFormFieldSampleState();
}

class _TextFormFieldSampleState extends State<TextFormFieldSample> {
  final _inputController = TextEditingController();
  String _value = defaultMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _value,
            ),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _inputController,
              onChanged: (value) {
                if (value.length <= 100) {
                  setState(() {
                    _value = value.isEmpty ? defaultMessage : value;
                  });
                } else {
                  _inputController.text = _value;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
