import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';

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
              FlutterGuideRouteNames.savedWidgets,
            );
          },
          title: 'Widgets',
          icon: Icons.extension_outlined,
        ),
        ListTileItemWidget(
          onTap: () {
            _controller.navigateTo(
              FlutterGuideRouteNames.savedPackages,
            );
          },
          title: 'Packages',
          icon: Icons.archive_outlined,
        ),
      ],
      actions: <ActionButtonWidget>[
        CustomDialog.button(
          text: 'Ok',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
