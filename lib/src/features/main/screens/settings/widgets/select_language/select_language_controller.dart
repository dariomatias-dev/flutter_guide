import 'package:flutter/material.dart';

class SelectLanguageController {
  SelectLanguageController({
    required BuildContext context,
  }) {
    // _init(context);
  }

  // late SharedPreferences _sharedPreferences;

  // late ValueNotifier<LanguageModel> selectedLanguageNotifier;

  // void _init(
  //   BuildContext context,
  // ) {
  //   _sharedPreferences =
  //       UserPreferencesInheritedWidget.of(context)!.sharedPreferences;

  //   final selectedLanguageName = _sharedPreferences.getString(
  //         SharedPreferencesKeys.languageKey,
  //       ) ??
  //       '';

  //   late LanguageModel selectedLanguage;

  //   if (selectedLanguageName == LanguageCode.ptBr.name) {
  //     selectedLanguage = portugueseLanguage;
  //   } else {
  //     selectedLanguage = englishLanguage;
  //   }

  //   selectedLanguageNotifier = ValueNotifier(
  //     selectedLanguage,
  //   );
  // }

  void showLanguageMenu(
    BuildContext context,
    VoidCallback setStateCallback,
  ) {
    // final button = context.findRenderObject() as RenderBox;
    // final overlay =
    //     Overlay.of(context).context.findRenderObject()! as RenderBox;
    // final position = RelativeRect.fromRect(
    //   Rect.fromPoints(
    //     button.localToGlobal(
    //       button.size.topRight(Offset.zero),
    //       ancestor: overlay,
    //     ),
    //     button.localToGlobal(
    //       button.size.topRight(Offset.zero),
    //       ancestor: overlay,
    //     ),
    //   ),
    //   Offset.zero & overlay.size,
    // );

    // showMenu(
    //   context: context,
    //   position: position,
    //   items: List.generate(
    //     0,
    //     (index) {
    //       final language = languages[index];

    //       return PopupMenuItem(
    //         onTap: () {
    //           selectedLanguageNotifier.value = language;

    //           _sharedPreferences.setString(
    //             SharedPreferencesKeys.languageKey,
    //             language.languageCode.name,
    //           );

    //           setStateCallback();
    //         },
    //         value: language,
    //         child: Text(
    //           language.name,
    //           style: TextStyle(
    //             color: Theme.of(context).colorScheme.primary,
    //             fontSize: 14.0,
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    //   elevation: 8.0,
    // );
  }
}
