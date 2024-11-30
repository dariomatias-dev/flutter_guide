import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_guide/src/shared/widgets/default_tab_bar_widget.dart';

class ComponentSampleTabBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const ComponentSampleTabBarWidget({
    super.key,
    required this.currentTabIndexNotifier,
  });

  final ValueNotifier<int> currentTabIndexNotifier;

  @override
  Size get preferredSize => const Size.fromHeight(
        kToolbarHeight,
      );

  @override
  Widget build(BuildContext context) {
    final applocalizations = AppLocalizations.of(context)!;

    return DefaultTabBarWidget(
      onTap: (value) {
        currentTabIndexNotifier.value = value;
      },
      tabs: <Tab>[
        Tab(
          child: Text(
            applocalizations.preview,
          ),
        ),
        Tab(
          child: Text(
            applocalizations.code,
          ),
        ),
      ],
    );
  }
}
