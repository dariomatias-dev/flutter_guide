import 'package:flutter/material.dart';

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({
    super.key,
    required this.currentTabIndex,
  });

  final int currentTabIndex;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconColor: Theme.of(context).colorScheme.tertiary,
      itemBuilder: (context) {
        return [
          if (currentTabIndex == 1)
            PopupMenuItem(
              onTap: () {},
              child: const Text('Copy'),
            ),
          PopupMenuItem(
            onTap: () {},
            child: const Text('Save'),
          ),
          PopupMenuItem(
            onTap: () {},
            child: const Text('Doc'),
          ),
        ];
      },
    );
  }
}
