import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_guide/src/features/widget/widget_screen.dart';

import 'package:flutter_guide/src/shared/utils/open_url.dart';
import 'package:flutter_guide/src/shared/widgets/component_list/card_widget/save_button/save_button_widget.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.icon,
    required this.widgetName,
    this.youtubeLink,
  });

  final IconData icon;
  final String widgetName;
  final String? youtubeLink;

  @override
  Widget build(BuildContext context) {
    return ListTileItemWidget(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WidgetScreen(
                widgetName: widgetName,
              );
            },
          ),
        );
      },
      title: widgetName,
      icon: icon,
      trailingWidgets: [
        if (youtubeLink != null)
          IconButton(
            onPressed: () {
              openURL(
                () => context,
                'https://youtu.be/${youtubeLink!}',
              );
            },
            icon: FaIcon(
              FontAwesomeIcons.youtube,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        const SizedBox(width: 8.0),
        SaveButtonWidget(
          widgetName: widgetName,
        ),
      ],
    );
  }
}