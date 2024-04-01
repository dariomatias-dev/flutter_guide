import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/settings/widgets/app_info_widget/app_info_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/donate_dialog_widget.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/social_networks_widget/social_networks_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 36.0),
              const AppInfoWidget(),
              const SizedBox(height: 20.0),
              ListTileItemWidget(
                title: 'Docs',
                icon: Icons.description_outlined,
                onTap: () {},
              ),
              ListTileItemWidget(
                title: 'My Website',
                icon: Icons.public,
                openInBrowser: true,
                onTap: () {},
              ),
              ListTileItemWidget(
                title: 'Buy Me a Coffee',
                icon: Icons.local_cafe_outlined,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const DonateDialogWidget();
                    },
                  );
                },
              ),
              ListTileItemWidget(
                title: 'Rate this app',
                icon: Icons.star_border,
                openInBrowser: true,
                onTap: () {},
              ),
              ListTileItemWidget(
                title: 'About',
                icon: Icons.info_outline,
                onTap: () {},
              ),
              const SocialNetworksWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
