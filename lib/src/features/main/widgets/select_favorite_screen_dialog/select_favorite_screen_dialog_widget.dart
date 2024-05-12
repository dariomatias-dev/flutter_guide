import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

import 'package:flutter_guide/src/features/main/widgets/select_favorite_screen_dialog/select_favorite_screen_dialog_controller.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class SelectFavoriteScreenDialogWidget extends StatefulWidget {
  const SelectFavoriteScreenDialogWidget({super.key});

  @override
  State<SelectFavoriteScreenDialogWidget> createState() =>
      _SelectFavoriteScreenDialogWidgetState();
}

class _SelectFavoriteScreenDialogWidgetState
    extends State<SelectFavoriteScreenDialogWidget> {
  late SelectFavoriteScreenDialogController _controller;

  @override
  void didChangeDependencies() {
    _controller = SelectFavoriteScreenDialogController(
      context: context,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Favorites',
      children: <Widget>[
        ListTileItemWidget(
          onTap: () {
            _controller.navigateTo(
              ComponentType.widget,
            );
          },
          title: 'Widgets',
          icon: Icons.extension_outlined,
        ),
        ListTileItemWidget(
          onTap: () {
            _controller.navigateTo(
              ComponentType.package,
            );
          },
          title: 'Packages',
          icon: Icons.archive_outlined,
        ),
      ],
      actions: <ActionButtonWidget>[
        CustomDialog.button(
          text: 'Ok',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
