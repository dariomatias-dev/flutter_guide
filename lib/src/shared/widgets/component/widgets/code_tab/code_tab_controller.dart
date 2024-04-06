import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

import 'package:flutter_guide/src/providers/component_screen_inherited_widget.dart';

class CodeTabController {
  TextSpan code = const TextSpan(
    text: '',
  );

  Future<void> loadCode(
    BuildContext Function() getContext,
    VoidCallback setStateCallback,
  ) async {
    final file = ComponentScreenInheritedWidget.of(getContext())!.componentFile;
    final codeString = await file.readAsString();

    await Highlighter.initialize(['dart', 'yaml']);

    final theme = await (Theme.of(getContext()).colorScheme.brightness ==
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
