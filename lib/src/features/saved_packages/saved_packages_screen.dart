import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/saved_components/saved_components_widget.dart';

class SavedPackages extends StatelessWidget {
  const SavedPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return const SavedComponents(
      componentType: ComponentType.package,
    );
  }
}