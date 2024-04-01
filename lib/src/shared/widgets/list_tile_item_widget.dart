import 'package:flutter/material.dart';

class ListTileItemWidget extends StatelessWidget {
  const ListTileItemWidget({
    super.key,
    required this.title,
    required this.icon,
    this.openInBrowser = false,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final bool openInBrowser;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStatePropertyAll(
        Colors.blue.withOpacity(0.05),
      ),
      hoverColor: Colors.blue.withOpacity(0.05),
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Theme.of(context).colorScheme.primary,
                size: 20.0,
              ),
              const SizedBox(width: 16.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              if (openInBrowser)
                const Icon(
                  Icons.open_in_new_rounded,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
