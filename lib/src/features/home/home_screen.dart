import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/component_groups.dart';

import 'package:flutter_guide/src/features/home/widgets/border_list_tile_item_widget.dart';
import 'package:flutter_guide/src/features/home/widgets/component_group_widgetcomponent_group/component_group_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20.0),
            BorderListTileItemWidget(
              title: 'UIs',
              icon: Icons.web,
              onTap: () {},
            ),
            const SizedBox(height: 8.0),
            BorderListTileItemWidget(
              title: 'Examples',
              icon: Icons.list_alt,
              onTap: () {},
            ),
            const SizedBox(height: 8.0),
            BorderListTileItemWidget(
              title: 'Animations',
              icon: Icons.movie,
              onTap: () {},
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
              ),
              child: Text(
                'Components',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 4.0),
            ...List.generate(
              componentGroups.length * 2 - 1,
              (index) {
                if (index % 2 == 1) {
                  return const SizedBox(height: 4.0);
                }

                return ComponentGroupWidget(
                  componentGroup: componentGroups[index ~/ 2],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
