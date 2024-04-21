import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';

Future<void> openURL(
  BuildContext Function() getContext,
  String url,
) async {
  if (!(await launchUrl(Uri.parse(url)))) {
    showAlertDialog(getContext(), url);
  }
}

void showAlertDialog(BuildContext context, String url) async {
  showDialog(
    context: context,
    builder: (context) {
      return CustomDialog.dialog(
        title: 'Error',
        actions: <ActionButtonWidget>[
          CustomDialog.button(
            text: 'Ok',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0,
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: 'An error occurred while trying to open the link: ',
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
          ),
        ],
      );
    },
  );
}
