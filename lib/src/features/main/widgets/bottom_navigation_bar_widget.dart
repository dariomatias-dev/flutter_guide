import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar_extend/salomon_bottom_bar.dart';

const _icons = <IconData>[
  Icons.home_outlined,
  Icons.widgets_outlined,
  Icons.archive_outlined,
  Icons.settings_outlined,
];
const _names = <String>[
  'Home',
  'Widgets',
  'Packages',
  'Settings',
];

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.screenIndex,
    required this.updateScreenIndex,
  });

  final int screenIndex;
  final void Function(
    int value,
  ) updateScreenIndex;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      currentIndex: screenIndex,
      onTap: (value) {
        updateScreenIndex(value);
      },
      items: List.generate(_names.length, (index) {
        return SalomonBottomBarItem(
          unselectedColor: Theme.of(context).colorScheme.primary,
          icon: Icon(
            _icons[index],
          ),
          title: Text(_names[index]),
          selectedColor: Colors.blue,
        );
      }),
    );
  }
}
