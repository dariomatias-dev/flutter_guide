import 'package:flutter_guide/src/core/enums/language_code.dart';

import 'package:flutter_guide/src/shared/models/language_model.dart';

const englishLanguage = LanguageModel(
  name: 'English',
  languageCode: LanguageCode.enUs,
);

const portugueseLanguage = LanguageModel(
  name: 'Português',
  languageCode: LanguageCode.ptBr,
);

const languages = <LanguageModel>[
  englishLanguage,
  portugueseLanguage,
];
