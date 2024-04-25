import 'package:flutter/material.dart';

class ToggleButtonsSample extends StatefulWidget {
  const ToggleButtonsSample({super.key});

  @override
  State<ToggleButtonsSample> createState() => _ToggleButtonsSampleState();
}

class _ToggleButtonsSampleState extends State<ToggleButtonsSample> {
  List<bool> values = List.filled(3, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ToggleButtons(
          onPressed: (index) {
            setState(() {
              values[index] = !values[index];
            });
          },
          isSelected: values,
          children: <Icon>[
            const Icon(
              Icons.g_translate,
            ),
            Icon(
              values[1] ? Icons.favorite : Icons.favorite_border,
            ),
            const Icon(
              Icons.access_alarm,
            ),
          ],
        ),
      ),
    );
  }
}
