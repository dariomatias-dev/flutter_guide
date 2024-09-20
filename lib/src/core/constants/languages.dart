import 'package:flutter/cupertino.dart';

class LanguagesApp {
  static const en = 'en';
  static const ptBr = 'pt_BR';
  static const es = 'es';

  static const _languageLocales = {
    en: Locale('en'),
    ptBr: Locale('pt', 'BR'),
    es: Locale('es'),
  };

  static Locale locale(
    String language,
  ) {
    return _languageLocales[language] ?? _languageLocales[en]!;
  }
}
