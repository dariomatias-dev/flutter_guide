import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/widgets/saved_components/saved_components_widget.dart';

class SavedWidgetsScreen extends StatelessWidget {
  const SavedWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SavedComponents(
      componentType: ComponentType.widget,
    );
  }
}
