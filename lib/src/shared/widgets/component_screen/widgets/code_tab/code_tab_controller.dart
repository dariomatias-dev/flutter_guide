import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

class CodeTabController {
  TextSpan code = const TextSpan(
    text: '',
  );

  Future<void> loadCode(
    ComponentType componentType,
    String widgetName,
    BuildContext Function() currentContext,
    VoidCallback setStateCallback,
  ) async {
    final componentTypeName =
        componentType == ComponentType.widget ? 'widget' : 'package';

    final file = File(
      'lib/src/features/$componentTypeName/${componentTypeName}_samples/${widgetName.toLowerCase()}_sample.dart',
    );
    final codeString = await file.readAsString();

    await Highlighter.initialize(['dart', 'yaml']);

    final theme = await (Theme.of(currentContext()).colorScheme.brightness ==
            Brightness.light
        ? HighlighterTheme.loadLightTheme
        : HighlighterTheme.loadDarkTheme)();

    final highlighter = Highlighter(
      language: 'dart',
      theme: theme,
    );

    final highlightedCode = highlighter.highlight(codeString);

    code = highlightedCode;

    setStateCallback();
  }
}
