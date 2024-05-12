import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/shared/widgets/saved_components/saved_components_widget.dart';

class SelectFavoriteScreenDialogController {
  SelectFavoriteScreenDialogController({
    required BuildContext context,
  }) : _context = context;

  final BuildContext _context;

  void navigateTo(
    ComponentType componentType,
  ) {
    Navigator.push(
      _context,
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
