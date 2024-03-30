import 'dart:math';

import 'package:flutter/material.dart';

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
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Row(
          children: [
            const SizedBox(width: 16.0),
            Icon(
              Icons.border_bottom,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const SizedBox(width: 20.0),
            Text(
              widget.title,
            ),
            Expanded(
              child: Container(),
            ),
            if (showYouTubeIcon)
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_circle_filled,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}
