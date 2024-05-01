import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component/widgets/favorite_popup_menu_item/favorite_popup_menu_item_controller.dart';

class FavoritePopupMenuItemWidget extends PopupMenuEntry {
  const FavoritePopupMenuItemWidget({
    super.key,
    required this.componentType,
    required this.componentName,
  });

  final ComponentType componentType;
  final String componentName;

  @override
  double get height => kMinInteractiveDimension;

  @override
  bool represents(value) => false;

  @override
  State<FavoritePopupMenuItemWidget> createState() => FavoritePopupMenuItemWidgetState();
}

class FavoritePopupMenuItemWidgetState extends State<FavoritePopupMenuItemWidget> {
  late FavoritePopupMenuItemController _controller;

  @override
  void didChangeDependencies() {
    _controller = FavoritePopupMenuItemController(
      context: context,
      componentType: widget.componentType,
      componentName: widget.componentName,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuItem(
      onTap: () {
        _controller.saved = _controller.favoritesService.toggleWidgetState(
          context,
          widget.componentName,
        );

        _controller.favoriteNotifier.setValue(widget.componentName);
      },
      child: Text(
        _controller.saved ? 'Remove' : 'Save',
      ),
    );
  }
}
