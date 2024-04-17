import 'package:flutter/material.dart';

class FontWeightModel {
  const FontWeightModel({
    required this.name,
    required this.weight,
  });

  final String name;
  final FontWeight weight;
}

const fontWeights = <FontWeightModel>[
  FontWeightModel(
    name: 'Font Weight 100',
    weight: FontWeight.w100,
  ),
  FontWeightModel(
    name: 'Font Weight 200',
    weight: FontWeight.w200,
  ),
  FontWeightModel(
    name: 'Font Weight 300',
    weight: FontWeight.w300,
  ),
  FontWeightModel(
    name: 'Font Weight 400',
    weight: FontWeight.w400,
  ),
  FontWeightModel(
    name: 'Font Weight 500',
    weight: FontWeight.w500,
  ),
  FontWeightModel(
    name: 'Font Weight 600',
    weight: FontWeight.w600,
  ),
  FontWeightModel(
    name: 'Font Weight 700',
    weight: FontWeight.w700,
  ),
  FontWeightModel(
    name: 'Font Weight 800',
    weight: FontWeight.w800,
  ),
  FontWeightModel(
    name: 'Font Weight 900',
    weight: FontWeight.w900,
  ),
];

const fontSizes = <double>[
  10.0,
  12.0,
  14.0,
  16.0,
  18.0,
  20.0,
  22.0,
  24.0,
  26.0,
  28.0,
  30.0,
];

class TextSample extends StatelessWidget {
  const TextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(fontWeights.length * 2, (index) {
                if (index % 2 == 0) {
                  return const SizedBox(height: 4.0);
                }

                final fontWeight = fontWeights[index ~/ 2];

                return Text(
                  fontWeight.name,
                  style: TextStyle(
                    fontWeight: fontWeight.weight,
                  ),
                );
              }),
              const SizedBox(height: 12.0),
              ...List.generate(fontSizes.length * 2, (index) {
                if (index % 2 == 0) {
                  return const SizedBox(height: 4.0);
                }

                final fontSize = fontSizes[index ~/ 2];

                return Text(
                  'Font Size $fontSize',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                );
              }),
              const SizedBox(height: 12.0),
              const Text(
                'Text Blue',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 4.0),
              const Text(
                'Text Yellow',
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
