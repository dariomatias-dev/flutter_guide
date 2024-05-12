import 'package:flutter/material.dart';
import 'package:flutter_guide/src/shared/widgets/ink_well_button_widget.dart';

class ListTileItemWidget extends StatelessWidget {
  const ListTileItemWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.icon,
    this.openInBrowser = false,
    this.borderRadius = 0,
    this.padding,
    this.trailingWidgets,
  });

  final VoidCallback onTap;
  final String title;
  final IconData? icon;
  final bool openInBrowser;
  final double borderRadius;
  final EdgeInsets? padding;
  final List<Widget>? trailingWidgets;

  @override
  Widget build(BuildContext context) {
    return InkWellButtonWidget(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      if (icon != null)
                        Icon(
                          icon,
                          color: Theme.of(context).colorScheme.primary,
                          size: 20.0,
                        ),
                      const SizedBox(width: 12.0),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  if (openInBrowser)
                    Icon(
                      Icons.open_in_new_rounded,
                      color: Theme.of(context).colorScheme.tertiary,
                      size: 18.0,
                    ),
                  if (trailingWidgets != null) ...trailingWidgets!,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
