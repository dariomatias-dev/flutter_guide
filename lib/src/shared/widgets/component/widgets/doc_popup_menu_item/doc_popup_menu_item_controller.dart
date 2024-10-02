import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

class DocPopupMenuItemController {
  String category = '';

  String getCategory(
    WidgetCategory widgetCategory,
  ) {
    switch (widgetCategory) {
      case WidgetCategory.widgets:
        return 'widgets';
      case WidgetCategory.material:
      case WidgetCategory.functions:
        return 'material';
      default:
        return 'cupertino';
    }
  }
}
