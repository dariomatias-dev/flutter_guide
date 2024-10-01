import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  });

  final int screenIndex;
  final void Function(
    int value,
  ) updateScreenIndex;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final _names = <String>[];

  @override
  void didChangeDependencies() {
    final appLocalizations = AppLocalizations.of(context)!;

    _names.clear();
    _names.addAll([
      appLocalizations.home,
      'Elements',
      appLocalizations.packages,
      appLocalizations.settings,
    ]);

    setState(() {});

    super.didChangeDependencies();
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
