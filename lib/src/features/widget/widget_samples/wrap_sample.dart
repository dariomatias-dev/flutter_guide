import 'package:flutter/material.dart';

const programmingLanguages = <String>[
  'Dart',
  'Python',
  'JavaScript',
  'Java',
  'C#',
  'C++',
  'C',
  'GoLang',
  'Kotlin',
  'Swift',
];

class WrapSample extends StatelessWidget {
  const WrapSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 40.0,
          runSpacing: 2.0,
          children: List.generate(
            programmingLanguages.length,
            (index) {
              return Text(
                programmingLanguages[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
