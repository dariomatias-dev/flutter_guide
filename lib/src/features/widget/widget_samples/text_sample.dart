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

class TextSample extends StatelessWidget {
  const TextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(fontWeights.length * 2 - 1, (index) {
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
        ],
      ),
    );
  }
}
