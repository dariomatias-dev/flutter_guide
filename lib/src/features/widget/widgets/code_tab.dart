import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class CodeTab extends StatefulWidget {
  const CodeTab({
    super.key,
    required this.widgetName,
  });

  final String widgetName;

  @override
  State<CodeTab> createState() => _CodeTabState();
}

class _CodeTabState extends State<CodeTab> {
  TextSpan code = const TextSpan(
    text: '',
  );

  BuildContext currentContext() => context;

  Future<void> loadCode() async {
    final file = File(
      'lib/src/features/widget/widget_samples/${widget.widgetName.toLowerCase()}_sample.dart',
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

    setState(() {
      code = highlightedCode;
    });
  }

  @override
  void didChangeDependencies() {
    loadCode();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 6.0,
          ),
          child: Text.rich(
            code,
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
