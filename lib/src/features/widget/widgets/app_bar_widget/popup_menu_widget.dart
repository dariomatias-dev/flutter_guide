import 'package:flutter/material.dart';

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconColor: Theme.of(context).colorScheme.tertiary,
      itemBuilder: (context) {
        return [
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
