import 'package:flutter/material.dart';

const _colors = <Color>[
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.green,
  Colors.purple,
];

class PageViewSample extends StatelessWidget {
  const PageViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: _colors.length,
        itemBuilder: (context, index) {
          return Container(
            color: _colors[index],
            constraints: const BoxConstraints.expand(),
            child: Center(
              child: Text(
                'Page ${index + 1}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
