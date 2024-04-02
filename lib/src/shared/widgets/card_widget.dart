import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_guide/src/features/widget/widget_screen.dart';

import 'package:flutter_guide/src/providers/user_preferences_inherited_widget.dart';

import 'package:flutter_guide/src/shared/utils/open_url.dart';
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

  void _saveWidget(BuildContext context) {
    final sharedPreferences =
        UserPreferencesInheritedWidget.of(context)!.sharedPreferences;

    List<String>? savedWidgets = sharedPreferences.getStringList(
      'saved_widgets',
    );

    if (savedWidgets == null) {
      savedWidgets = [widgetName];
    } else {
      if (savedWidgets.contains(widgetName)) {
        final items = <String>[];
        for (String savedWidget in savedWidgets) {
          if (savedWidget != widgetName) {
            items.add(savedWidget);
          }
        }

        savedWidgets = items;
      } else {
        savedWidgets.add(widgetName);
      }
    }

    sharedPreferences.setStringList(
      'saved_widgets',
      savedWidgets,
    );
  }

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
        IconButton(
          onPressed: () => _saveWidget(context),
          icon: Icon(
            Icons.bookmark_border,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ],
    );
  }
}
