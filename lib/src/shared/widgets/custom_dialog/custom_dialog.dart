import 'package:flutter/material.dart';

part 'action_button_widget.dart';
part 'dialog_widget.dart';
part 'line_widget.dart';
part 'custom_dialog_screen_widget.dart';

class CustomDialog {
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
}
