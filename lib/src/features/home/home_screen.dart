import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/element_type_enum.dart';

import 'package:flutter_guide/src/features/home/widgets/border_list_tile_item_widget.dart';
import 'package:flutter_guide/src/features/home/widgets/component_groups/component_groups_widget.dart';

import 'package:flutter_guide/src/shared/widgets/interface_catalog_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: false,
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20.0),
            BorderListTileItemWidget(
              title: 'UIs',
              icon: Icons.web,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const InterfaceCatalogScreen(
                      elementType: ElementTypeEnum.ui,
                    );
                  },
                ));
              },
            ),
            const SizedBox(height: 8.0),
            BorderListTileItemWidget(
              title: 'Examples',
              icon: Icons.list_alt,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const InterfaceCatalogScreen(
                      elementType: ElementTypeEnum.example,
                    );
                  },
                ));
              },
            ),
            const SizedBox(height: 20.0),
            const ComponentGroupsWidget(),
          ],
        ),
      ),
    );
  }
}
