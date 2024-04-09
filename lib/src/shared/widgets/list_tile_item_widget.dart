import 'package:flutter/material.dart';

class ListTileItemWidget extends StatelessWidget {
  const ListTileItemWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.icon,
    this.openInBrowser = false,
    this.borderRadius = 0,
    this.trailingWidgets,
  });

  final VoidCallback onTap;
  final String title;
  final IconData? icon;
  final bool openInBrowser;
  final double borderRadius;
  final List<Widget>? trailingWidgets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStatePropertyAll(
        Colors.blue.withOpacity(0.05),
      ),
      hoverColor: Colors.blue.withOpacity(0.05),
      borderRadius: BorderRadius.circular(borderRadius),
      child: Ink(
        child: ListTile(
          leading: icon != null ? Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
            size: 20.0,
          ) : null,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (openInBrowser)
                Icon(
                  Icons.open_in_new_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              if (trailingWidgets != null) ...trailingWidgets!,
            ],
          ),
        ),
      ),
    );
  }
}
