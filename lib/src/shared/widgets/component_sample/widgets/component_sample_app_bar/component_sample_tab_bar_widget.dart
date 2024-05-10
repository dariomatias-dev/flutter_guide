import 'package:flutter/material.dart';

class ComponentSampleTabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ComponentSampleTabBarWidget({
    super.key,
    required this.currentTabIndexNotifier,
  });

  final ValueNotifier<int> currentTabIndexNotifier;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.blue.shade400.withOpacity(0.8),
      unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
      indicatorColor: Colors.blue.shade400.withOpacity(0.8),
      onTap: (value) {
        currentTabIndexNotifier.value = value;
      },
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
