import 'package:flutter/material.dart';
import 'package:flutter_guide/src/core/flutter_guide_colors.dart';

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
  }) {
    return DialogWidget(
      title: title,
      description: description,
      spacingAction: spacingAction ?? 8.0,
      actions: actions,
      descriptionTextAlign: descriptionTextAlign,
      children: children,
    );
  }

  static ActionButtonWidget button({
    required String text,
    Color? backgroundColor,
    Color? textColor,
    required VoidCallback onTap,
  }) {
    return ActionButtonWidget(
      text: text,
      textColor: textColor,
      backgroundColor: backgroundColor,
      onTap: onTap,
    );
  }
}
