import 'package:flutter/material.dart';

class InkWellButtonWidget extends StatelessWidget {
  const InkWellButtonWidget({
    super.key,
    this.onTap,
    required this.borderRadius,
    this.backgroundColor,
    required this.child,
  });

  final VoidCallback? onTap;
  final double borderRadius;
  final Color? backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: WidgetStatePropertyAll(
        Colors.blue.withOpacity(0.05),
      ),
      hoverColor: Colors.blue.withOpacity(0.05),
      borderRadius: BorderRadius.circular(borderRadius),
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
