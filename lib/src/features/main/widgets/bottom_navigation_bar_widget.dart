import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar_extend/salomon_bottom_bar.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.screenIndex,
    required this.updateScreenIndex,
  });

  final int screenIndex;
  final void Function(int value) updateScreenIndex;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      currentIndex: screenIndex,
      onTap: (value) {
        updateScreenIndex(value);
      },
      items: [
        SalomonBottomBarItem(
          unselectedColor: Theme.of(context).colorScheme.primary,
          icon: const Icon(Icons.home_outlined),
          title: const Text("Home"),
          selectedColor: Colors.blue,
        ),
        SalomonBottomBarItem(
          unselectedColor: Theme.of(context).colorScheme.primary,
          icon: const Icon(Icons.extension_outlined),
          title: const Text("Widgets"),
          selectedColor: Colors.blue,
        ),
        SalomonBottomBarItem(
          unselectedColor: Theme.of(context).colorScheme.primary,
          icon: const Icon(Icons.archive_outlined),
          title: const Text("Packages"),
          selectedColor: Colors.blue,
        ),
        SalomonBottomBarItem(
          unselectedColor: Theme.of(context).colorScheme.primary,
          icon: const Icon(Icons.settings_outlined),
          title: const Text("Settings"),
          selectedColor: Colors.blue,
        ),
      ],
    );
  }
}
