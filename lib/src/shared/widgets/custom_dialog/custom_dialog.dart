import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/flutter_guide_colors.dart';

part 'action_button_widget.dart';
part 'dialog_widget.dart';
part 'line_widget.dart';

class CustomDialog {
  static Widget dialog({
    required String title,
    String? description,
    required List<Widget> children,
    double? spacingAction,
    required List<ActionButtonWidget> actions,
  }) =>
      DialogWidget(
        title: title,
        description: description,
        spacingAction: spacingAction,
        actions: actions,
        children: children,
      );

  static ActionButtonWidget button({
    required String text,
    required Color textColor,
    required Color backgroundColor,
    required VoidCallback onPressed,
  }) =>
      ActionButtonWidget(
        text: text,
        textColor: textColor,
        backgroundColor: backgroundColor,
        onPressed: onPressed,
      );
}