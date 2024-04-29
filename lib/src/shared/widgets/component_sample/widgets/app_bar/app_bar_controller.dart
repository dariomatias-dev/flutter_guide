import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_guide/src/providers/component_sample_screen_inherited_widget.dart';

import 'package:flutter_guide/src/shared/widgets/component_sample/widgets/app_bar/popup_menu_widget.dart';

class AppBarController {
  AppBarController({
    required this.getContext,
  }) {
    _file = ComponentSampleScreenInheritedWidget.of(getContext())!.file;
  }

  final BuildContext Function() getContext;
  OverlayEntry? _overlayEntry;

  late File _file;

  Future<void> copyCode() async {
    final codeString = await _file.readAsString();

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

  void showPopupMenu(
    BuildContext context,
    GlobalKey popupMenuButtonKey,
  ) {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return const PopupMenuWidget();
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void removePopupMenu() {
    _overlayEntry!.remove();
  }
}
