import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_guide/src/features/settings/widgets/docs_and_resources_dialog_widget.dart';
import 'package:flutter_guide/src/features/settings/widgets/donate_dialog_widget.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

class SettingsController {
  SettingsController({
    required BuildContext context,
  }) : _context = context;

  final BuildContext _context;
  final _customDialog = CustomDialog();

  void showDocsAndResourcesDialog() {
    _customDialog.showDialog(
      context: _context,
      builder: (overlayEntry) {
        return DocsAndResourcesDialogWidget(
          overlayEntry: overlayEntry,
        );
      },
    );
  }

  void showDonateDialog() {
    _customDialog.showDialog(
      context: _context,
      builder: (overlayEntry) {
        return DonateDialogWidget(
          overlayEntry: overlayEntry,
        );
      },
    );
  }
}
