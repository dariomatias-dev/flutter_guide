import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

import 'package:flutter_guide/src/shared/widgets/component_screen/widgets/app_bar_widget/popup_menu/favorite_button/favorite_button_controller.dart';

class FavoriteButtonWidget extends PopupMenuEntry {
  const FavoriteButtonWidget({
    super.key,
    required this.componentType,
    required this.componentName,
  });

  final ComponentType componentType;
  final String componentName;

  @override
  double get height => throw UnimplementedError();

  @override
  bool represents(value) => true;

  @override
  State<FavoriteButtonWidget> createState() => FavoriteButtonWidgetState();
}

class FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  final _controller = FavoriteButtonController();

  @override
  void didChangeDependencies() {
    _controller.didChangeDependencies(
      context,
      widget.componentType,
      widget.componentName,
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
