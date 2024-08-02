import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
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

  final _logger = Logger();

  TextSpan code = const TextSpan(
    text: '',
  );

  void _init(
    BuildContext context,
    VoidCallback setStateCallback,
  ) {
    final filePath = ComponentSampleScreenInheritedWidget.of(context)!.file;
    final brightness = Theme.of(context).colorScheme.brightness;

    _loadCode(
      filePath,
      brightness,
      setStateCallback,
    );
  }

  Future<void> _loadCode(
    String filePath,
    Brightness brightness,
    VoidCallback setStateCallback,
  ) async {
    try {
      final codeString = await rootBundle.loadString(filePath);

      await Highlighter.initialize(
        <String>['dart', 'yaml'],
      );

      final theme = await (brightness == Brightness.light
          ? HighlighterTheme.loadLightTheme
          : HighlighterTheme.loadDarkTheme)();

      final highlighter = Highlighter(
        language: 'dart',
        theme: theme,
      );

      final highlightedCode = highlighter.highlight(
        codeString,
      );

      code = highlightedCode;

      setStateCallback();
    } catch (err, stackTrace) {
      _logger.e(
        'Error Log',
        error: err,
        stackTrace: stackTrace,
      );
    }
  }
}
