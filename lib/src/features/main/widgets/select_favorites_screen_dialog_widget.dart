import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/routes/flutter_guide_route_names.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';

class SelectFavoritesScreenDialogWidget extends StatelessWidget {
  const SelectFavoritesScreenDialogWidget({super.key});

  void _navigateTo(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pop(context);

    Navigator.pushNamed(
      context,
      routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Favorites',
      children: [
        ListTileItemWidget(
          onTap: () {
            _navigateTo(
              context,
              FlutterGuideRouteNames.savedWidgets,
            );
          },
          title: 'Widgets',
          icon: Icons.extension_outlined,
        ),
        ListTileItemWidget(
          onTap: () {
            _navigateTo(
              context,
              FlutterGuideRouteNames.savedPackages,
            );
          },
          title: 'Packages',
          icon: Icons.archive_outlined,
        ),
      ],
      actions: [
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
