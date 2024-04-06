import 'package:flutter/material.dart';

class SelectFavoriteScreenDialogController {
  SelectFavoriteScreenDialogController({
    required this.context,
  });

  final BuildContext context;

  void navigateTo(
    String routeName,
  ) {
    Navigator.pop(context);

    Navigator.pushNamed(
      context,
      routeName,
    );
  }
}
