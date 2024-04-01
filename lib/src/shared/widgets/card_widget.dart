import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  final showYouTubeIcon = Random().nextInt(3) == 1;

  @override
  Widget build(BuildContext context) {
    return ListTileItemWidget(
      onTap: () {},
      title: widget.title,
      icon: Icons.border_bottom,
      trailingWidgets: [
        if (true)
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.youtube,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        const SizedBox(width: 8.0),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_border,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
      ],
    );
  }
}
