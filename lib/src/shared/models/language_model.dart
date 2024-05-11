import 'package:flutter_guide/src/core/enums/language_code.dart';

class LanguageModel {
  const LanguageModel({
    required this.name,
    required this.languageCode,
  });

  final String name;
  final LanguageCode languageCode;
}
