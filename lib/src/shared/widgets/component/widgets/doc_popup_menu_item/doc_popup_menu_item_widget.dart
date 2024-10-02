import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

import 'package:flutter_guide/src/shared/utils/open_url.dart';
import 'package:flutter_guide/src/shared/widgets/component/widgets/doc_popup_menu_item/doc_popup_menu_item_controller.dart';

class DocPopupMenuItemWidget extends PopupMenuEntry {
  const DocPopupMenuItemWidget({
    super.key,
    required this.componentName,
    required this.componentCategory,
  });

  final String componentName;
  final WidgetCategory? componentCategory;

  @override
  double get height => kMinInteractiveDimension;

  @override
  bool represents(value) => false;

  @override
  State<DocPopupMenuItemWidget> createState() => _PopupMenuItemDocWidgetState();
}

class _PopupMenuItemDocWidgetState extends State<DocPopupMenuItemWidget> {
  final _controller = DocPopupMenuItemController();

  @override
  Widget build(BuildContext context) {
    return PopupMenuItem(
      onTap: () {
        String url = '';

        if (widget.componentCategory == null) {
          url = 'https://pub.dev/packages/${widget.componentName}';
        } else {
          final componentCategory = _controller.getCategory(
            widget.componentCategory!,
          );

          url =
              'https://api.flutter.dev/flutter/$componentCategory/${widget.componentName}';

          url +=
              '${widget.componentCategory != WidgetCategory.functions ? '-class' : ''}.html';
        }

        openUrl(
          () => context,
          url,
        );
      },
      child: const Text('Doc'),
    );
  }
}
