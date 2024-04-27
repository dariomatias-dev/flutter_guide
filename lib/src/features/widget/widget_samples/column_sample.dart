import 'package:flutter/material.dart';

const colors = <Color>[
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

class ColumnSample extends StatelessWidget {
  const ColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(colors.length, (index) {
            return Container(
              width: 50.0,
              height: 50.0,
              color: colors[index],
            );
          }),
        ),
      ),
    );
  }
}
