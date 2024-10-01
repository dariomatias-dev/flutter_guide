import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar_extend/salomon_bottom_bar.dart';

const _icons = <IconData>[
  Icons.home_outlined,
  Icons.widgets_outlined,
  Icons.archive_outlined,
  Icons.settings_outlined,
];

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.screenIndex,
    required this.updateScreenIndex,
    required this.screenNames,
  });

  final int screenIndex;
  final void Function(
    int value,
  ) updateScreenIndex;
  final List<String> screenNames;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final _names = <String>[];

  @override
  void initState() {
    _names.addAll(
      widget.screenNames,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      currentIndex: widget.screenIndex,
      onTap: (value) {
        widget.updateScreenIndex(value);
      },
      items: List.generate(_names.length, (index) {
        return SalomonBottomBarItem(
          unselectedColor: Theme.of(context).colorScheme.primary,
          icon: Icon(
            _icons[index],
          ),
          title: Text(
            _names[index],
          ),
          selectedColor: Colors.blue,
        );
      }),
    );
  }
}
