import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_guide/src/shared/utils/show_custom_dialog.dart';
import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

Future<void> openUrl(
  BuildContext Function() getContext,
  String url,
) async {
  if (!(await launchUrl(Uri.parse(url)))) {
    showAlertDialog(
      getContext(),
      url,
    );
  }
}

void showAlertDialog(
  BuildContext context,
  String url,
) async {
  showCustomDialog(
    context: context,
    builder: (overlayEntry) {
      return CustomDialog.dialog(
        title: 'Error',
        actions: <ActionButtonWidget>[
          CustomDialog.button(
            text: 'Ok',
            onTap: () {
              overlayEntry?.remove();
            },
          ),
        ],
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'An error occurred while trying to open the link: ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextSpan(
                  text: url,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
