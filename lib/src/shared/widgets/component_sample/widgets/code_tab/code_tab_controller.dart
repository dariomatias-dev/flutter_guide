import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

import 'package:flutter_guide/src/providers/component_sample_screen_inherited_widget.dart';

class CodeTabController {
  CodeTabController({
    required BuildContext context,
    required VoidCallback setStateCallback,
  }) {
    _init(
      context,
      setStateCallback,
    );
  }

  TextSpan code = const TextSpan(
    text: '',
  );

  void _init(
    BuildContext context,
    VoidCallback setStateCallback,
  ) {
    final file = ComponentSampleScreenInheritedWidget.of(context)!.file;
    final brightness = Theme.of(context).colorScheme.brightness;

    _loadCode(
      file,
      brightness,
      setStateCallback,
    );
  }

  Future<void> _loadCode(
    File file,
    Brightness brightness,
    VoidCallback setStateCallback,
  ) async {
    final codeString = await file.readAsString();

    await Highlighter.initialize(
      ['dart', 'yaml'],
    );

    final theme = await (brightness == Brightness.light
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
