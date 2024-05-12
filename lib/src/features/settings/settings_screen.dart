import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/docs_and_resources_widget.dart';

import 'package:flutter_guide/src/features/settings/widgets/app_info_widget/app_info_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/donate_dialog_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/select_language/select_language_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/social_networks_widget/social_networks_widget.dart';

import 'package:flutter_guide/src/shared/utils/open_url.dart';
import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final customDialog = CustomDialog();

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
                title: 'Docs And Resources',
                icon: Icons.description_outlined,
                onTap: () {
                  customDialog.showDialog(
                    context: context,
                    builder: (overlayEntry) {
                      return CustomDialog.dialog(
                        title: 'Docs And Resources',
                        actions: <ActionButtonWidget>[
                          CustomDialog.button(
                            text: 'Ok',
                            onTap: () {
                              overlayEntry?.remove();
                            },
                          ),
                        ],
                        children: List.generate(
                          docsAndResources.length,
                          (index) {
                            final item = docsAndResources[index];

                            return ListTileItemWidget(
                              onTap: () {
                                openURL(
                                  () => context,
                                  item.url,
                                );
                              },
                              icon: item.icon,
                              title: item.name,
                              openInBrowser: true,
                            );
                          },
                        ),
                      );
                    },
                  );
                },
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
