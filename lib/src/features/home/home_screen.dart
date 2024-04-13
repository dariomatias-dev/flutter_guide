import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/home/widgets/border_list_tile_item_widget.dart';
import 'package:flutter_guide/src/features/home/widgets/component_groups/component_groups_widget.dart';

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
              title: 'Elements',
              icon: Icons.list_alt,
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
            const ComponentGroupsWidget(),
          ],
        ),
      ),
    );
  }
}
