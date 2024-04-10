import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    this.icon,
    this.child,
    required this.onTap,
  }) : assert(
          !(icon != null && child != null),
          'It is not possible to provide a child and an icon. Provide only one.',
        );

  final IconData? icon;
  final Widget? child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: child ??
              Icon(
                icon,
                color: Theme.of(context).colorScheme.primary,
                size: 20.0,
              ),
        ),
      ),
    );
  }
}
