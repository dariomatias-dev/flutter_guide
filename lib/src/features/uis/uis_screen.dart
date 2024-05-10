import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/uis.dart';

import 'package:flutter_guide/src/features/ui/ui_screen.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/shared/widgets/standard_app_bar_widget.dart';

class UisScreen extends StatelessWidget {
  const UisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StandardAppBarWidget(
        title: 'UIs',
      ),
      body: ListView.separated(
        itemCount: uis.length,
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12.0);
        },
        itemBuilder: (context, index) {
          final ui = uis[index];

          return ListTileItemWidget(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UiScreen(
                      ui: ui,
                    );
                  },
                ),
              );
            },
            title: ui.name,
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
