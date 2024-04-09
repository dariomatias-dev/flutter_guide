import 'package:flutter/material.dart';

class TrailingIconButtonWidget extends StatelessWidget {
  const TrailingIconButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
        size: 18.0,
      ),
    );
  }
}
