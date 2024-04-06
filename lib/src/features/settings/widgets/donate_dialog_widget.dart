import 'package:flutter/material.dart';
import 'package:flutter_guide/src/shared/utils/open_url.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

class DonateDialogWidget extends StatelessWidget {
  const DonateDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    return CustomDialog.dialog(
      title: 'Contribute',
      description: 'Support the project by buying a coffee.',
      actions: [
        CustomDialog.button(
          text: 'Cancel',
          textColor: Colors.grey[isLight ? 700 : 800]!,
          backgroundColor: Colors.white.withOpacity(
            isLight ? 0.9 : 0.85,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomDialog.button(
          text: 'Donate',
          textColor: Colors.white,
          backgroundColor: Colors.yellow,
          onPressed: () {
            openURL(
              () => context,
              'https://www.buymeacoffee.com/dariomatias',
            );
          },
        ),
      ],
      children: [],
    );
  }
}
