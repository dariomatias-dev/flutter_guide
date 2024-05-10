import 'package:flutter/material.dart';
import 'package:flutter_guide/src/features/main/widgets/select_favorite_screen_dialog/select_favorite_screen_dialog_widget.dart';

import 'package:flutter_guide/src/shared/widgets/standard_app_bar_widget.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBarWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return StandardAppBarWidget(
      showBackButton: false,
      title: Row(
        children: <Widget>[
          Image.asset(
            'assets/icons/flutter_icon.png',
            width: 20.0,
            height: 20.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const SelectFavoriteScreenDialogWidget();
              },
            );
          },
          icon: Icon(
            Icons.bookmark_border,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(width: 4.0),
      ],
    );
  }
}
