import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_guide/src/providers/component_sample_screen_inherited_widget.dart';

class ComponentSampleAppBarController {
  ComponentSampleAppBarController({
    required this.getContext,
  }) {
    _filePath = ComponentSampleScreenInheritedWidget.of(getContext())!.file;
  }

  final BuildContext Function() getContext;

  late String _filePath;

  Future<void> copyCode() async {
    final codeString = await rootBundle.loadString(_filePath);

    Clipboard.setData(
      ClipboardData(text: codeString),
    );

    ScaffoldMessenger.of(
      getContext(),
    ).showSnackBar(
      const SnackBar(
        content: Text(
          'Code copied to the clipboard',
        ),
      ),
    );
  }
}
