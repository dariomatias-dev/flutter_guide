import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

void showCustomDialog({
  required BuildContext context,
  required Widget Function(
    OverlayEntry? overlayEntry,
  ) builder,
}) {
  OverlayEntry? overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) {
      return CustomDialogScreenWidget(
        removeDocs: () {
          overlayEntry?.remove();
        },
        child: builder(
          overlayEntry,
        ),
      );
    },
  );

  Overlay.of(context).insert(
    overlayEntry,
  );
}
