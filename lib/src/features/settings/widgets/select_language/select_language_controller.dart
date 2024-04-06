import 'package:flutter/material.dart';

const languages = [
  'English',
  'Português',
];

class SelectLanguageController {
  final ValueNotifier<String> selectedLanguageNotifier =
      ValueNotifier(languages[0]);

  void showLanguageMenu(
    BuildContext context,
    VoidCallback setStateCallback,
  ) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject()! as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(
          button.size.topRight(Offset.zero),
          ancestor: overlay,
        ),
        button.localToGlobal(
          button.size.topRight(Offset.zero),
          ancestor: overlay,
        ),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: List.generate(
        languages.length,
        (index) {
          final language = languages[index];

          return PopupMenuItem(
            onTap: () {
              selectedLanguageNotifier.value = language;

              setStateCallback();
            },
            value: language,
            child: Text(
              language,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14.0,
              ),
            ),
          );
        },
      ),
      elevation: 8.0,
    );
  }
}
