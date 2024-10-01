import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/default_tab_bar_widget.dart';

class ElementsScreen extends StatelessWidget {
  const ElementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: DefaultTabBarWidget(
                onTap: (value) {},
                tabs: const <Tab>[
                  Tab(
                    child: Text('Widgets'),
                  ),
                  Tab(
                    child: Text('Functions'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
