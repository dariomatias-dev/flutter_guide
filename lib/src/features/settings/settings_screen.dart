import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/settings/widgets/app_info_widget/app_info_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/list_tile_item_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 36.0),
          const AppInfoWidget(),
          const SizedBox(height: 20.0),
          ListTileItemWidget(
            title: 'Share',
            icon: Icons.share,
            onTap: () {},
          ),
          ListTileItemWidget(
            title: 'Rate this app',
            icon: Icons.star_border,
            onTap: () {},
          ),
          ListTileItemWidget(
            title: 'About',
            icon: Icons.info_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
