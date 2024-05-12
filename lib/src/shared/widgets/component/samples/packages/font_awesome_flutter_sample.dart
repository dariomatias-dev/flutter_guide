import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const icons = <IconData>[
  FontAwesomeIcons.camera,
  FontAwesomeIcons.user,
  FontAwesomeIcons.star,
  FontAwesomeIcons.music,
  FontAwesomeIcons.clock,
];

class FontAwesomeFlutterSample extends StatelessWidget {
  const FontAwesomeFlutterSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(icons.length * 2 - 1, (index) {
            if (index % 2 == 1) {
              return const SizedBox(height: 12.0);
            }

            return FaIcon(icons[index ~/ 2]);
          }),
        ),
      ),
    );
  }
}
