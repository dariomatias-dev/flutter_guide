import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/components/examples.dart';
import 'package:flutter_guide/src/core/constants/components/uis.dart';
import 'package:flutter_guide/src/core/enums/element_type_enum.dart';
import 'package:flutter_guide/src/shared/widgets/component_sample/component_sample_screen.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/shared/widgets/standard_app_bar_widget.dart';

class InterfaceCatalogScreen extends StatelessWidget {
  const InterfaceCatalogScreen({
    super.key,
    required this.elementType,
  });

  final ElementTypeEnum elementType;

  @override
  Widget build(BuildContext context) {
    final isUi = elementType == ElementTypeEnum.ui;

    return Scaffold(
      appBar: StandardAppBarWidget(
        titleName: isUi ? 'UIs' : 'Examples',
      ),
      body: ListView.separated(
        itemCount: (isUi ? uis : examples).length,
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12.0);
        },
        itemBuilder: (context, index) {
          final element = (isUi ? uis : examples)[index];

          return ListTileItemWidget(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ComponentSampleScreen(
                      title: element.name,
                      filePath:
                          'lib/src/features/ui/samples/${element.name.toLowerCase().replaceAll(' ', '_')}_sample.dart',
                      sample: element.component,
                    );
                  },
                ),
              );
            },
            title: element.name,
            trailingWidgets: const <Widget>[
              Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 26.0,
              )
            ],
          );
        },
      ),
    );
  }
}
