import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/examples.dart';

import 'package:flutter_guide/src/features/example/example_screen.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/shared/widgets/standard_app_bar_widget.dart';

class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StandardAppBarWidget(
        title: 'Examples',
      ),
      body: ListView.separated(
        itemCount: examples.length,
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12.0);
        },
        itemBuilder: (context, index) {
          final example = examples[index];

          return ListTileItemWidget(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ExampleScreen(
                      example: example,
                    );
                  },
                ),
              );
            },
            title: example.name,
            trailingWidgets: const <Widget>[
              Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 26.0,
              )
            ],
          );
        },
      ),
    );
  }
}
