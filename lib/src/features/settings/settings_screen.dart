import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/social_networks.dart';

import 'package:flutter_guide/src/features/settings/widgets/app_info_widget/app_info_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/social_button_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
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
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              socialNetworks.length * 2,
              (index) {
                if (index % 2 == 1) {
                  return const SizedBox(width: 16.0);
                }

                return SocialNetworkButtonWidget(
                  socialNetwork: socialNetworks[index ~/ 2],
                );
              },
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
