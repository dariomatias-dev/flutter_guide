import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/widgets/saved_components/saved_components_widget.dart';

class SelectFavoriteScreenDialogController {
  SelectFavoriteScreenDialogController({
    required this.context,
  });

  final BuildContext context;

  void navigateTo(
    ComponentType componentType,
  ) {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SavedComponents(
            componentType: componentType,
          );
        },
      ),
    );
  }
}
