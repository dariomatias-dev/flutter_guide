import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

class DonateDialogWidget extends StatelessWidget {
  const DonateDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Contribute',
      description: 'Support the project by buying a coffee.',
      spacingAction: 8.0,
      actions: [
        CustomDialog.button(
          text: 'Cancel',
          textColor: Colors.grey.shade700,
          backgroundColor: Colors.white.withOpacity(
            Theme.of(context).brightness == Brightness.light ? 0.9 : 0.85,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomDialog.button(
          text: 'Donate',
          textColor: Colors.white,
          backgroundColor: Colors.yellow,
          onPressed: () {},
        ),
      ],
      children: [],
    );
  }
}
