import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.blue.shade400.withOpacity(0.8),
      unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
      indicatorColor: Colors.blue.shade400.withOpacity(0.8),
      tabs: const <Tab>[
        Tab(
          child: Text('Preview'),
        ),
        Tab(
          child: Text('Code'),
        ),
      ],
    );
  }
}
