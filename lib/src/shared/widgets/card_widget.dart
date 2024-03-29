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
            const Icon(
              Icons.border_bottom,
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
                icon: const Icon(
                  Icons.play_circle_filled,
                ),
              ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
              ),
            ),
            const SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}
