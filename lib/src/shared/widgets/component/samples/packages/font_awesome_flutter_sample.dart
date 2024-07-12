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
        child: Wrap(
          spacing: 20.0,
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(icons.length, (index) {
            return FaIcon(
              icons[index],
            );
          }),
        ),
      ),
    );
  }
}
