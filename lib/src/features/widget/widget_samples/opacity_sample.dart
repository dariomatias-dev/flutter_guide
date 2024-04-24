import 'package:flutter/material.dart';

const opacities = <double>[
  0.0,
  0.1,
  0.25,
  0.5,
  0.75,
  1.0,
];

class OpacitySample extends StatefulWidget {
  const OpacitySample({super.key});

  @override
  State<OpacitySample> createState() => _OpacitySampleState();
}

class _OpacitySampleState extends State<OpacitySample> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 140.0,
                  ),
                  child: Opacity(
                    opacity: _opacity,
                    child: Image.asset(
                      'assets/icons/flutter_icon.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _opacity,
                items: List.generate(opacities.length, (index) {
                  final opacity = opacities[index];
            
                  return DropdownMenuItem(
                    value: opacity,
                    child: Text(
                      (opacity * 100).floor().toString(),
                    ),
                  );
                }),
                onChanged: (value) {
                  setState(() {
                    _opacity = value!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
