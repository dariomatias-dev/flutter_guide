import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

class DocPopupMenuItemController {
  String category = '';

  String getCategory(
    ComponentType type,
  ) {
    switch (type) {
      case ComponentType.widget:
        return 'widgets';
      case ComponentType.material:
      case ComponentType.function:
        return 'material';
      default:
        return 'cupertino';
    }
  }
}
