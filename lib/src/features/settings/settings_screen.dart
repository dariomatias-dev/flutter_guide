import 'package:flutter/material.dart';

import 'package:flutter_guide/src/features/settings/settings_controller.dart';
import 'package:flutter_guide/src/features/settings/widgets/app_info_widget/app_info_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/select_language/select_language_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/social_networks_widget/social_networks_widget.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late SettingsController _controller;

  @override
  void didChangeDependencies() {
    _controller = SettingsController(
      context: context,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 36.0),
              const AppInfoWidget(),
              const SizedBox(height: 20.0),
              ListTileItemWidget(
                title: 'Docs and Resources',
                icon: Icons.description_outlined,
                onTap: _controller.showDocsAndResourcesDialog,
              ),
              const SelectLanguageWidget(),
              ListTileItemWidget(
                title: 'My Website',
                icon: Icons.public,
                openInBrowser: true,
                onTap: () {},
              ),
              ListTileItemWidget(
                title: 'Buy Me a Coffee',
                icon: Icons.local_cafe_outlined,
                onTap: _controller.showDonateDialog,
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
