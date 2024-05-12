import 'package:flutter/material.dart';

part 'action_button_widget.dart';
part 'dialog_widget.dart';
part 'line_widget.dart';

class CustomDialog {
  OverlayEntry? _overlayEntry;

  static DialogWidget dialog({
    required String title,
    String? description,
    TextAlign descriptionTextAlign = TextAlign.center,
    double? spacingAction,
    required List<ActionButtonWidget> actions,
    required List<Widget> children,
  }) =>
      DialogWidget(
        title: title,
        description: description,
        spacingAction: spacingAction ?? 8.0,
        actions: actions,
        descriptionTextAlign: descriptionTextAlign,
        children: children,
      );

  static ActionButtonWidget button({
    required String text,
    Color? backgroundColor,
    Color? textColor,
    required VoidCallback onTap,
  }) =>
      ActionButtonWidget(
        text: text,
        textColor: textColor,
        backgroundColor: backgroundColor,
        onTap: onTap,
      );

  void showDialog({
    required BuildContext context,
    required Widget Function(
      OverlayEntry? overlayEntry,
    ) builder,
  }) {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: <Widget>[
            GestureDetector(
              onTap: _removeDocs,
              child: Container(
                color: Colors.black.withOpacity(0.6),
                constraints: const BoxConstraints.expand(),
                child: Container(
                  color: Colors.blue.shade100.withOpacity(
                    Theme.of(context).brightness == Brightness.light
                        ? 0.3
                        : 0.0,
                  ),
                  constraints: const BoxConstraints.expand(),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const IgnorePointer(
                    child: SizedBox(width: 32.0),
                  ),
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: builder(
                          _overlayEntry,
                        ),
                      ),
                    ),
                  ),
                  const IgnorePointer(
                    child: SizedBox(width: 32.0),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );

    Overlay.of(context).insert(
      _overlayEntry!,
    );
  }

  void _removeDocs() {
    _overlayEntry!.remove();
  }
}
